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
		buildAndRun,
		generateAllTemplates,
		buildFrontendIndex,
		buildFrontendSQL,
		renderAllTemplates,
		buildMetricsLocal,
		runMetricsLocal,
	)
	nabu.Default(buildAndRun)
	r = nabu.Runner{
		Stdout: os.Stdout,
		Stderr: os.Stderr,
	}
}

func buildAndRun() error {
	for _, task := range []nabu.Task{
		build,
		run,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return nil
}

func run() error {
	return runLocal()
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

var pnpmDir = []string{"pnpm", "--dir"}

func buildFrontendIndex() error {
	return r.Run(append(pnpmDir, "sites/index/www", "build"))
}

func buildFrontendSQL() error {
	return r.Run(append(pnpmDir, "sites/sql/www", "build"))
}

func renderAllTemplates() error {
	return r.Run([]string{"go", "run", "soikke.li/moreplease/cmd/render"})
}

func buildMetricsLocal() error {
	return r.Run(append(pnpmDir, "cmd/metrics/www", "build"))
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
