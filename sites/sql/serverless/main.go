package main

import (
	"github.com/aws/aws-lambda-go/lambda"
	"github.com/awslabs/aws-lambda-go-api-proxy/httpadapter"
	"github.com/soikes/moreplease/pkg/assets"
	"github.com/soikes/moreplease/pkg/web"
	sqlAssets "github.com/soikes/moreplease/sites/sql/assets"
	"github.com/soikes/moreplease/sites/sql/mux"
)

// Entrypoint for lambda function.
func main() {
	fd, err := assets.CSPFetchDirectives(sqlAssets.Assets)
	if err != nil {
		panic(err)
	}
	h := web.SecurityHeaders{
		CSPFetchDirectives: fd,
	}
	m := mux.NewServerlessMux()
	handler := h.Apply(m)
	lambda.Start(httpadapter.New(handler).EventToRequest)
}
