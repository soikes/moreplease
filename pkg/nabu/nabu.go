// Nabu is the Babylonian patron god of literacy, the rational arts, scribes, and wisdom.
// The package nabu is a configurable task runner that can be used in place of shell scripts.
package nabu

import (
	"fmt"
	"io"
	"os/exec"
	"reflect"
	"runtime"
	"strings"
)

type Runner struct {
	Stdout io.Writer
	Stderr io.Writer
}
type Option func(r *Runner)
type Task func() error

var registeredTasks map[string]Task
var defaultTask Task

func (r Runner) Run(cmd []string, opts ...Option) error {
	for _, opt := range opts {
		opt(&r)
	}

	if len(cmd) == 0 {
		return fmt.Errorf("no command to run")
	}
	c := exec.Command(cmd[0], cmd[1:]...)
	c.Stdout = r.Stdout
	c.Stderr = r.Stderr
	return c.Run()
}

func Register(tasks ...Task) {
	if registeredTasks == nil {
		registeredTasks = make(map[string]Task)
	}
	for _, task := range tasks {
		name := getFuncName(task)
		registeredTasks[name] = task
	}
}

func Default(task Task) {
	defaultTask = task
}

func Do(name string) error {
	if task, ok := registeredTasks[name]; ok {
		return task()
	}
	return fmt.Errorf("no matching task \"%s\"", name)
}

func DoDefault() error {
	if defaultTask == nil {
		return fmt.Errorf("no default task registered")
	}
	name := getFuncName(defaultTask)
	err := defaultTask()
	if err != nil {
		return fmt.Errorf("%s: %s", name, err.Error())
	}
	return nil
}

func GetTasks() []string {
	var tasks []string
	for name := range registeredTasks {
		tasks = append(tasks, name)
	}
	return tasks
}

func WithStdout(w io.Writer) Option {
	return func(r *Runner) {
		r.Stdout = w
	}
}

func WithStderr(w io.Writer) Option {
	return func(r *Runner) {
		r.Stderr = w
	}
}

func getFuncName(t Task) string {
	sig := runtime.FuncForPC(reflect.ValueOf(t).Pointer()).Name()
	parts := strings.Split(sig, ".")
	return parts[len(parts)-1]
}
