package tasks

import (
	"os"

	"github.com/soikes/moreplease/pkg/nabu"
)

var r nabu.Runner

func init() {
	nabu.Register(
		run,
		prebuild,
		build,
		test,
		runLocal,
		runProd,
		generateAllTemplates,
		buildFrontendIndex,
		buildFrontendSQL,
		renderAllTemplatesLocal,
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
		prebuild,
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
	return r.Run([]string{"go", "run", "github.com/soikes/moreplease", "-config", "config/local.json"})
}

func runProd() error {
	return r.Run([]string{"go", "run", "github.com/soikes/moreplease", "-config", "config/prod.json"})
}

func prebuild() error {
	for _, task := range []nabu.Task{
		generateAllTemplates,
		buildFrontendIndex,
		buildFrontendSQL,
		renderAllTemplatesLocal,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return nil
}

func build() error {
	return r.Run([]string{"go", "build", "-o", "moreplease"})
}

func test() error {
	return r.Run([]string{"go", "test", "./..."})
}

// Export for tests.
func BuildTemplates() error {
	for _, task := range []nabu.Task{
		generateAllTemplates,
		renderAllTemplatesLocal,
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

func renderAllTemplatesLocal() error {
	return r.Run([]string{"go", "run", "github.com/soikes/moreplease/cmd/render", "-config", "config/local.json"})
}

func renderAllTemplatesProd() error {
	return r.Run([]string{"go", "run", "github.com/soikes/moreplease/cmd/render", "-config", "config/prod.json"})
}

func buildMetricsLocal() error {
	return r.Run(append(bunrun, "cmd/metrics/www", "build"))
}

func runMetricsLocal() error {
	for _, task := range []nabu.Task{
		prebuild,
		buildMetricsLocal,
	} {
		err := task()
		if err != nil {
			return err
		}
	}
	return r.Run([]string{"go", "run", "github.com/soikes/moreplease/cmd/metrics",
		"--",
		"-store", "tmp/metrics.db",
		"-fakedata",
	})
}
