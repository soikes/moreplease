package main

import (
	"net/url"

	"github.com/pulumi/pulumi-aws/sdk/v6/go/aws/cloudfront"
	"github.com/pulumi/pulumi-aws/sdk/v6/go/aws/iam"
	"github.com/pulumi/pulumi-aws/sdk/v6/go/aws/lambda"
	"github.com/pulumi/pulumi-aws/sdk/v6/go/aws/s3"
	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
)

func main() {
	pulumi.Run(func(ctx *pulumi.Context) error {
		deployBucket, err := s3.NewBucketV2(ctx, "moreplease.dev-deploy", nil)
		if err != nil {
			return err
		}

		_, err = s3.NewBucketPublicAccessBlock(ctx, "moreplease.dev-deploy-block", &s3.BucketPublicAccessBlockArgs{
			Bucket:                deployBucket.ID(),
			BlockPublicAcls:       pulumi.Bool(true),
			BlockPublicPolicy:     pulumi.Bool(true),
			IgnorePublicAcls:      pulumi.Bool(true),
			RestrictPublicBuckets: pulumi.Bool(true),
		})
		if err != nil {
			return err
		}

		assetsBucket, err := createAssetsBucket(ctx)
		if err != nil {
			return err
		}
		funcUrl, lambda, err := createLambda(ctx, deployBucket)
		if err != nil {
			return err
		}
		distribution, err := createCloudFrontDistribution(ctx, assetsBucket, funcUrl)
		if err != nil {
			return err
		}
		assetsDoc := pulumi.All(assetsBucket.Arn, distribution.Arn).ApplyT(
			func(args []any) (iam.GetPolicyDocumentResult, error) {
				bucketArn := args[0].(string)
				distArn := args[1].(string)

				doc, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
					Statements: []iam.GetPolicyDocumentStatement{
						{
							Effect: pulumi.StringRef("Allow"),
							Actions: []string{
								"s3:GetObject",
							},
							Principals: []iam.GetPolicyDocumentStatementPrincipal{
								{
									Type: "Service",
									Identifiers: []string{
										"cloudfront.amazonaws.com",
									},
								},
							},
							Resources: []string{
								bucketArn + "/*",
							},
							Conditions: []iam.GetPolicyDocumentStatementCondition{
								{
									Test:     "StringEquals",
									Variable: "aws:SourceArn",
									Values: []string{
										distArn,
									},
								},
							},
						},
					},
				})
				if err != nil {
					return iam.GetPolicyDocumentResult{}, err
				}
				return *doc, nil
			},
		).(iam.GetPolicyDocumentResultOutput)

		_, err = s3.NewBucketPolicy(ctx, "moreplease.dev-assets-policy", &s3.BucketPolicyArgs{
			Bucket: assetsBucket.ID(),
			Policy: assetsDoc.Json(),
		})
		if err != nil {
			return err
		}

		err = createDeploymentInfrastructure(ctx, deployBucket, assetsBucket, lambda)
		if err != nil {
			return err
		}

		return nil
	})
}

func createAssetsBucket(ctx *pulumi.Context) (*s3.BucketV2, error) {
	bucket, err := s3.NewBucketV2(ctx, "moreplease.dev-assets", nil)
	if err != nil {
		return nil, err
	}

	_, err = s3.NewBucketPublicAccessBlock(ctx, "moreplease.dev-assets-block", &s3.BucketPublicAccessBlockArgs{
		Bucket:                bucket.ID(),
		BlockPublicAcls:       pulumi.Bool(true),
		BlockPublicPolicy:     pulumi.Bool(true),
		IgnorePublicAcls:      pulumi.Bool(true),
		RestrictPublicBuckets: pulumi.Bool(true),
	})
	if err != nil {
		return nil, err
	}

	return bucket, nil
}

func createCloudFrontDistribution(ctx *pulumi.Context, bucket *s3.BucketV2, lambdaUrl *lambda.FunctionUrl) (*cloudfront.Distribution, error) {
	staticAccess, err := cloudfront.NewOriginAccessControl(ctx, "moreplease.dev-assets-origin-access-control", &cloudfront.OriginAccessControlArgs{
		OriginAccessControlOriginType: pulumi.String("s3"),
		SigningBehavior:               pulumi.String("always"),
		SigningProtocol:               pulumi.String("sigv4"),
	})
	if err != nil {
		return nil, err
	}

	originCfgArgs := &cloudfront.DistributionOriginCustomOriginConfigArgs{
		OriginProtocolPolicy: pulumi.String("https-only"),
		HttpPort:             pulumi.Int(80),
		HttpsPort:            pulumi.Int(443),
		OriginSslProtocols: pulumi.StringArray{
			pulumi.String("TLSv1.2"),
		},
	}

	staticOrigin := cloudfront.DistributionOriginArgs{
		OriginAccessControlId: staticAccess.ID(),
		DomainName:            bucket.BucketRegionalDomainName,
		OriginId:              pulumi.String("static"),
	}

	dynamicAccess, err := cloudfront.NewOriginAccessControl(ctx, "moreplease.dev-lambda-origin-access-control", &cloudfront.OriginAccessControlArgs{
		OriginAccessControlOriginType: pulumi.String("lambda"),
		SigningBehavior:               pulumi.String("always"),
		SigningProtocol:               pulumi.String("sigv4"),
	})
	if err != nil {
		return nil, err
	}

	dynamicOrigin := cloudfront.DistributionOriginArgs{
		OriginAccessControlId: dynamicAccess.ID(),
		DomainName: lambdaUrl.FunctionUrl.ApplyT(func(funcUrl string) (string, error) {
			u, err := url.Parse(funcUrl)
			if err != nil {
				return "", err
			}
			return u.Host, nil
		}).(pulumi.StringOutput),
		CustomOriginConfig: originCfgArgs,
		OriginId:           pulumi.String("dynamic"),
	}

	distribution, err := cloudfront.NewDistribution(ctx, "moreplease.dev", &cloudfront.DistributionArgs{
		// Aliases: pulumi.StringArray{
		// 	pulumi.String("moreplease.dev"),
		// },
		Enabled: pulumi.Bool(true),
		Restrictions: cloudfront.DistributionRestrictionsArgs{
			GeoRestriction: cloudfront.DistributionRestrictionsGeoRestrictionArgs{
				RestrictionType: pulumi.String("whitelist"),
				Locations: pulumi.StringArray{
					pulumi.String("US"),
					pulumi.String("CA"),
					pulumi.String("GB"),
					pulumi.String("DE"),
				},
			},
		},
		Origins: cloudfront.DistributionOriginArray{
			staticOrigin,
			dynamicOrigin,
		},
		OrderedCacheBehaviors: cloudfront.DistributionOrderedCacheBehaviorArray{
			cloudfront.DistributionOrderedCacheBehaviorArgs{
				AllowedMethods: pulumi.StringArray{
					pulumi.String("HEAD"),
					pulumi.String("DELETE"),
					pulumi.String("POST"),
					pulumi.String("GET"),
					pulumi.String("OPTIONS"),
					pulumi.String("PUT"),
					pulumi.String("PATCH"),
				},
				ForwardedValues: cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
					QueryString: pulumi.Bool(false),
					Cookies: cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
						Forward: pulumi.String("none"),
					},
				},
				PathPattern:    pulumi.String("/search/"),
				TargetOriginId: dynamicOrigin.OriginId,
				CachedMethods: pulumi.StringArray{
					pulumi.String("HEAD"),
					pulumi.String("GET"),
					pulumi.String("OPTIONS"),
				},
				ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
			},
			cloudfront.DistributionOrderedCacheBehaviorArgs{
				AllowedMethods: pulumi.StringArray{
					pulumi.String("HEAD"),
					pulumi.String("GET"),
					pulumi.String("OPTIONS"),
				},
				ForwardedValues: cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
					QueryString: pulumi.Bool(false),
					Cookies: cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
						Forward: pulumi.String("none"),
					},
				},
				PathPattern:    pulumi.String("/*"),
				TargetOriginId: staticOrigin.OriginId,
				CachedMethods: pulumi.StringArray{
					pulumi.String("HEAD"),
					pulumi.String("GET"),
					pulumi.String("OPTIONS"),
				},
				MinTtl:               pulumi.Int(0),
				DefaultTtl:           pulumi.Int(86400),
				MaxTtl:               pulumi.Int(31536000),
				ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
			},
		},
		DefaultCacheBehavior: cloudfront.DistributionDefaultCacheBehaviorArgs{
			AllowedMethods: pulumi.StringArray{
				pulumi.String("HEAD"),
				pulumi.String("GET"),
				pulumi.String("OPTIONS"),
			},
			ForwardedValues: cloudfront.DistributionDefaultCacheBehaviorForwardedValuesArgs{
				QueryString: pulumi.Bool(false),
				Cookies: cloudfront.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs{
					Forward: pulumi.String("none"),
				},
			},
			TargetOriginId: staticOrigin.OriginId,
			CachedMethods: pulumi.StringArray{
				pulumi.String("HEAD"),
				pulumi.String("GET"),
				pulumi.String("OPTIONS"),
			},
			MinTtl:               pulumi.Int(0),
			DefaultTtl:           pulumi.Int(86400),
			MaxTtl:               pulumi.Int(31536000),
			ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
		},
		IsIpv6Enabled: pulumi.Bool(false),
		ViewerCertificate: cloudfront.DistributionViewerCertificateArgs{
			CloudfrontDefaultCertificate: pulumi.Bool(true),
		},
	})
	if err != nil {
		return nil, err
	}

	return distribution, nil
}

func createLambda(ctx *pulumi.Context, deployBucket *s3.BucketV2) (*lambda.FunctionUrl, *lambda.Function, error) {
	dummy, err := createDummyPkg()
	if err != nil {
		return nil, nil, err
	}

	trustPolicyDoc := deployBucket.Arn.ApplyT(
		func(deployArn string) (iam.GetPolicyDocumentResult, error) {
			doc, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
				Statements: []iam.GetPolicyDocumentStatement{
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"sts:AssumeRole",
						},
						Principals: []iam.GetPolicyDocumentStatementPrincipal{
							{
								Type: "Service",
								Identifiers: []string{
									"lambda.amazonaws.com",
								},
							},
						},
					},
				},
			})
			if err != nil {
				return iam.GetPolicyDocumentResult{}, err
			}
			return *doc, nil
		},
	).(iam.GetPolicyDocumentResultOutput)

	lambdaRole, err := iam.NewRole(ctx, "moreplease.dev-lambda-exec-role", &iam.RoleArgs{
		AssumeRolePolicy: trustPolicyDoc.Json(),
	})

	lambdaExecDoc := deployBucket.Arn.ApplyT(
		func(deployBucketArn string) (iam.GetPolicyDocumentResult, error) {
			assumeDoc, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
				Statements: []iam.GetPolicyDocumentStatement{
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"s3:GetObject",
						},
						Resources: []string{
							deployBucketArn + "/*",
						},
					},
				},
			})
			if err != nil {
				return iam.GetPolicyDocumentResult{}, err
			}
			return *assumeDoc, nil
		},
	).(iam.GetPolicyDocumentResultOutput)

	_, err = iam.NewRolePolicy(ctx, "moreplease.dev-lambda-exec-role-policy", &iam.RolePolicyArgs{
		Role:   lambdaRole.Name,
		Policy: lambdaExecDoc.Json(),
	})

	_, err = iam.NewRolePolicyAttachment(ctx, "moreplease.dev-lambda-managed-exec-role-policy", &iam.RolePolicyAttachmentArgs{
		Role:      lambdaRole.Name,
		PolicyArn: pulumi.String(iam.ManagedPolicyAWSLambdaBasicExecutionRole),
	})

	lambdaFunc, err := lambda.NewFunction(ctx, "moreplease-dev-dynamicroutes",
		&lambda.FunctionArgs{
			Architectures: pulumi.StringArray{pulumi.String("arm64")},
			Runtime:       lambda.RuntimeCustomAL2023,
			MemorySize:    pulumi.Int(1024),
			Handler:       pulumi.String("bootstrap"),
			Role:          lambdaRole.Arn,
			Code:          pulumi.NewFileArchive(dummy),
		},
		pulumi.IgnoreChanges([]string{"code"}), // The code package is set separately in the deployment workflow.
	)
	if err != nil {
		return nil, nil, err
	}

	lambdaUrl, err := lambda.NewFunctionUrl(ctx, "moreplease.dev-function-url", &lambda.FunctionUrlArgs{
		AuthorizationType: pulumi.String("AWS_IAM"),
		FunctionName:      lambdaFunc.Arn,
	})
	if err != nil {
		return nil, nil, err
	}
	return lambdaUrl, lambdaFunc, nil
}

func createDeploymentInfrastructure(ctx *pulumi.Context, deployBucket *s3.BucketV2, assetsBucket *s3.BucketV2, lambdaFunc *lambda.Function) error {
	/* Note that the thumbprint below has been set to all F's because the thumbprint is not used when authenticating token.actions.githubusercontent.com. This is a special case used only when GitHub's OIDC is authenticating to IAM. IAM uses its library of trusted CAs to authenticate. The value is still the API, so it must be specified.
	Source: https://github.com/aws-actions/configure-aws-credentials?tab=readme-ov-file#configuring-iam-to-trust-github
	*/
	const stsDomain = `sts.amazonaws.com`
	const githubSubject = `repo:soikes/moreplease:environment:prod`
	oidc, err := iam.NewOpenIdConnectProvider(ctx, "moreplease.dev-github-oidc-provider", &iam.OpenIdConnectProviderArgs{
		ClientIdLists:   pulumi.StringArray{pulumi.String(stsDomain)},
		ThumbprintLists: pulumi.StringArray{pulumi.String("ffffffffffffffffffffffffffffffffffffffff")},
		Url:             pulumi.String("https://token.actions.githubusercontent.com"),
	})
	if err != nil {
		return err
	}
	trustPolicy := oidc.Arn.ApplyT(
		func(oidcArn string) (iam.GetPolicyDocumentResult, error) {
			assumeDoc, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
				Statements: []iam.GetPolicyDocumentStatement{
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"sts:AssumeRoleWithWebIdentity",
						},
						Principals: []iam.GetPolicyDocumentStatementPrincipal{
							{
								Type: "Federated",
								Identifiers: []string{
									oidcArn,
								},
							},
						},
						Conditions: []iam.GetPolicyDocumentStatementCondition{
							{
								Test:     "StringEquals",
								Variable: "token.actions.githubusercontent.com:aud",
								Values: []string{
									stsDomain,
								},
							},
							{
								Test:     "StringEquals",
								Variable: "token.actions.githubusercontent.com:sub",
								Values: []string{
									githubSubject,
								},
							},
						},
					},
				},
			})
			if err != nil {
				return iam.GetPolicyDocumentResult{}, err
			}
			return *assumeDoc, nil
		},
	).(iam.GetPolicyDocumentResultOutput)

	deployRole, err := iam.NewRole(ctx, "moreplease.dev-github-oidc-assume-role", &iam.RoleArgs{
		AssumeRolePolicy: trustPolicy.Json(),
	})

	roleDoc := pulumi.All(deployBucket.Arn, assetsBucket.Arn, lambdaFunc.Arn).ApplyT(
		func(args []any) (iam.GetPolicyDocumentResult, error) {
			deployBucketArn := args[0].(string)
			assetsBucketArn := args[1].(string)
			lambdaArn := args[2].(string)
			assumeDoc, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
				Statements: []iam.GetPolicyDocumentStatement{
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"s3:PutObject",
						},
						Resources: []string{
							deployBucketArn + "/*",
						},
					},
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"s3:PutObject",
						},
						Resources: []string{
							assetsBucketArn + "/*",
						},
					},
					{
						Effect: pulumi.StringRef("Allow"),
						Actions: []string{
							"lambda:UpdateFunctionCode",
						},
						Resources: []string{
							lambdaArn,
						},
					},
				},
			})
			if err != nil {
				return iam.GetPolicyDocumentResult{}, err
			}
			return *assumeDoc, nil
		},
	).(iam.GetPolicyDocumentResultOutput)

	_, err = iam.NewRolePolicy(ctx, "moreplease.dev-deploy-role-policy", &iam.RolePolicyArgs{
		Role:   deployRole.Name,
		Policy: roleDoc.Json(),
	})

	return err
}
