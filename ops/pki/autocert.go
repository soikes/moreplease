package pki

import "golang.org/x/crypto/acme/autocert"

func NewManager() *autocert.Manager {
	return &autocert.Manager{
		Cache:      autocert.DirCache("etc/certs"),
		Prompt:     autocert.AcceptTOS,
		Email:      "mike@soikke.li",
		HostPolicy: autocert.HostWhitelist("www.moresqlplease.com", "moresqlplease.com", "www.moreplease.dev", "sql.moreplease.dev"),
	}
}
