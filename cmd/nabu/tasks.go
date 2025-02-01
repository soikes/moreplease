package main

import (
	"os"

	"soikke.li/moreplease/pkg/nabu"
)

var r nabu.Runner

func init() {
	nabu.Register(
		run,
		build,
		generateAllTemplates,
		buildFrontendIndex,
		buildFrontendSQL,
		renderAllTemplates,
		buildMetricsLocal,
		runMetricsLocal,
	)
	nabu.Default(run)
	r = nabu.Runner{
		Stdout: os.Stdout,
		Stderr: os.Stderr,
	}
}

func run() error {
	for _, task := range []nabu.Task{
		build,
		runLocal,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return nil
}

func runLocal() error {
	return r.Run([]string{"go", "run", "soikke.li/moreplease", "-config", "config/local.json"})
}

func runProd() error {
	return r.Run([]string{"go", "run", "soikke.li/moreplease", "-config", "config/prod.json"})
}

func build() error {
	for _, task := range []nabu.Task{
		generateAllTemplates,
		buildFrontendIndex,
		buildFrontendSQL,
		renderAllTemplates,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return nil
}

func generateAllTemplates() error {
	return r.Run([]string{"templ", "generate"})
}

var bunrun = []string{"bun", "run", "--cwd"}

func buildFrontendIndex() error {
	return r.Run(append(bunrun, "sites/index/www", "build"))
}

func buildFrontendSQL() error {
	return r.Run(append(bunrun, "sites/sql/www", "build"))
}

func renderAllTemplates() error {
	return r.Run([]string{"go", "run", "soikke.li/moreplease/cmd/render"})
}

func buildMetricsLocal() error {
	return r.Run(append(bunrun, "cmd/metrics/www", "build"))
}

func runMetricsLocal() error {
	for _, task := range []nabu.Task{
		build,
		buildMetricsLocal,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return r.Run([]string{"go", "run", "soikke.li/moreplease/cmd/metrics",
		"--",
		"-store", "tmp/metrics.db",
		"-fakedata",
	})
}
