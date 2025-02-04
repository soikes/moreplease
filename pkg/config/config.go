package config

import (
	"encoding/json"
	"os"
)

type Config struct {
	Server struct {
		Url       string `json:"url"`
		EnableTLS bool   `json:"enable_tls"`
	} `json:"server"`
	Metrics struct {
		Store string `json:"storage_path"`
	}
}

func Load(path string) (Config, error) {
	var cfg Config
	f, err := os.Open(path)
	if err != nil {
		return cfg, err
	}
	jdec := json.NewDecoder(f)
	err = jdec.Decode(&cfg)
	return cfg, err
}
