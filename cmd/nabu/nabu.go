package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"os/signal"
	"strings"
	"syscall"

	"github.com/soikes/moreplease/pkg/nabu"
)

func main() {
	showTasks := flag.Bool("t", false, "show all registered tasks")
	flag.Parse()
	tasks := os.Args[1:]
	if *showTasks {
		var tasks strings.Builder
		ts := nabu.GetTasks()
		if len(ts) == 0 {
			fmt.Println("no tasks registered")
			os.Exit(0)
		}
		for _, t := range nabu.GetTasks() {
			tasks.WriteString(fmt.Sprintf("\t%s\n", t))
		}
		fmt.Printf("tasks: %s", tasks.String())
		os.Exit(0)
	}
	if len(tasks) == 0 {
		err := nabu.DoDefault()
		if err != nil {
			fmt.Printf("%s\n", err.Error())
			os.Exit(1)
		}
	}
	for _, task := range tasks {
		err := nabu.Do(task)
		if err != nil {
			fmt.Printf("%s: %s\n", task, err.Error())
			os.Exit(1)
		}
	}
}

func handleSignals(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt, syscall.SIGINT)
	go func() {
		<-c
		cancel()
	}()
}
