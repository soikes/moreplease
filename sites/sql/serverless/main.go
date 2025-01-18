package main

import (
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
	"soikke.li/moreplease/pkg/assets"
	"soikke.li/moreplease/pkg/web"
	sqlAssets "soikke.li/moreplease/sites/sql/assets"
	"soikke.li/moreplease/sites/sql/mux"
)

// Entrypoint for lambda function.
func main() {
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	h := web.Headers{
		CSPFetchDirectives: fd,
	}
	m := mux.NewServerlessMux()
	handler := h.AddSecurityHeaders(m)
	lambda.Start(httpadapter.New(handler).EventToRequest)
}
