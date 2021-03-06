package main

import (
	corepkg "go.amplifyedge.org/sys-share-v2/sys-core/service/go/pkg"
	"go.amplifyedge.org/sys-share-v2/sys-core/service/logging/zaplog"
	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "core",
	Short: "core cli",
}

func main() {
	zl := zaplog.NewZapLogger(zaplog.DEBUG, "sys-core-example", true, "")
	zl.InitLogger(nil)
	dbadm := corepkg.NewSysBusProxyClient()
	mailcli := corepkg.NewSysMailProxyClient()
	fileCli := corepkg.NewFileServiceClientCommand()
	rootCmd.AddCommand(dbadm.CobraCommand(), mailcli.CobraCommand(), fileCli)
	if err := rootCmd.Execute(); err != nil {
		zl.Fatalf("command failed: %v", err.Error())
	}

	// Extend it here for local thing.
	// TODO @gutterbacon: do this once Config is here.
}
