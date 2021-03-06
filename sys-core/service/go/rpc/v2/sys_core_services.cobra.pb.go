// Code generated by protoc-gen-cobra. DO NOT EDIT.

package v2

import (
	cobra "github.com/spf13/cobra"
	client "go.amplifyedge.org/protoc-gen-cobra/client"
	flag "go.amplifyedge.org/protoc-gen-cobra/flag"
	iocodec "go.amplifyedge.org/protoc-gen-cobra/iocodec"
	grpc "google.golang.org/grpc"
	proto "google.golang.org/protobuf/proto"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

func DbAdminServiceClientCommand(options ...client.Option) *cobra.Command {
	cfg := client.NewConfig(options...)
	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("DbAdminService"),
		Short:  "DbAdminService service client",
		Long:   "",
		Hidden: false,
	}
	cfg.BindFlags(cmd.PersistentFlags())
	cmd.AddCommand(
		_DbAdminServiceBackupCommand(cfg),
		_DbAdminServiceListBackupCommand(cfg),
		_DbAdminServiceRestoreCommand(cfg),
	)
	return cmd
}

func _DbAdminServiceBackupCommand(cfg *client.Config) *cobra.Command {
	req := &emptypb.Empty{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("Backup"),
		Short:  "Backup RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService", "Backup"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewDbAdminServiceClient(cc)
				v := &emptypb.Empty{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.Backup(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	return cmd
}

func _DbAdminServiceListBackupCommand(cfg *client.Config) *cobra.Command {
	req := &ListBackupRequest{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("ListBackup"),
		Short:  "ListBackup RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService", "ListBackup"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewDbAdminServiceClient(cc)
				v := &ListBackupRequest{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.ListBackup(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.BackupVersion, cfg.FlagNamer("BackupVersion"), "", "")

	return cmd
}

func _DbAdminServiceRestoreCommand(cfg *client.Config) *cobra.Command {
	req := &RestoreAllRequest{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("Restore"),
		Short:  "Restore RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "DbAdminService", "Restore"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewDbAdminServiceClient(cc)
				v := &RestoreAllRequest{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.Restore(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.RestoreVersion, cfg.FlagNamer("RestoreVersion"), "", "")
	cmd.PersistentFlags().StringToStringVar(&req.BackupFiles, cfg.FlagNamer("BackupFiles"), nil, "")

	return cmd
}

func BusServiceClientCommand(options ...client.Option) *cobra.Command {
	cfg := client.NewConfig(options...)
	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("BusService"),
		Short:  "BusService service client",
		Long:   "",
		Hidden: false,
	}
	cfg.BindFlags(cmd.PersistentFlags())
	cmd.AddCommand(
		_BusServiceBroadcastCommand(cfg),
	)
	return cmd
}

func _BusServiceBroadcastCommand(cfg *client.Config) *cobra.Command {
	req := &EventRequest{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("Broadcast"),
		Short:  "Broadcast RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "BusService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "BusService", "Broadcast"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewBusServiceClient(cc)
				v := &EventRequest{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.Broadcast(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.EventName, cfg.FlagNamer("EventName"), "", "")
	cmd.PersistentFlags().StringVar(&req.Initiator, cfg.FlagNamer("Initiator"), "", "")
	cmd.PersistentFlags().StringVar(&req.UserId, cfg.FlagNamer("UserId"), "", "")
	flag.BytesBase64Var(cmd.PersistentFlags(), &req.JsonPayload, cfg.FlagNamer("JsonPayload"), "")

	return cmd
}

func EmailServiceClientCommand(options ...client.Option) *cobra.Command {
	cfg := client.NewConfig(options...)
	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("EmailService"),
		Short:  "EmailService service client",
		Long:   "",
		Hidden: false,
	}
	cfg.BindFlags(cmd.PersistentFlags())
	cmd.AddCommand(
		_EmailServiceSendMailCommand(cfg),
	)
	return cmd
}

func _EmailServiceSendMailCommand(cfg *client.Config) *cobra.Command {
	req := &EmailRequest{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("SendMail"),
		Short:  "SendMail RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "EmailService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "EmailService", "SendMail"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewEmailServiceClient(cc)
				v := &EmailRequest{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.SendMail(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.Sender, cfg.FlagNamer("Sender"), "", "")
	cmd.PersistentFlags().StringVar(&req.Subject, cfg.FlagNamer("Subject"), "", "")
	cmd.PersistentFlags().StringToStringVar(&req.Recipients, cfg.FlagNamer("Recipients"), nil, "")
	flag.BytesBase64Var(cmd.PersistentFlags(), &req.Content, cfg.FlagNamer("Content"), "")
	cmd.PersistentFlags().StringSliceVar(&req.Cc, cfg.FlagNamer("Cc"), nil, "")
	cmd.PersistentFlags().StringSliceVar(&req.Bcc, cfg.FlagNamer("Bcc"), nil, "")
	flag.BytesBase64SliceVar(cmd.PersistentFlags(), &req.Attachments, cfg.FlagNamer("Attachments"), "")
	cmd.PersistentFlags().StringVar(&req.SenderName, cfg.FlagNamer("SenderName"), "", "")

	return cmd
}

func AnalyticsServiceClientCommand(options ...client.Option) *cobra.Command {
	cfg := client.NewConfig(options...)
	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("AnalyticsService"),
		Short:  "AnalyticsService service client",
		Long:   "",
		Hidden: false,
	}
	cfg.BindFlags(cmd.PersistentFlags())
	cmd.AddCommand(
		_AnalyticsServiceSendAnalyticsEventCommand(cfg),
		_AnalyticsServiceDownloadAnalyticsCommand(cfg),
	)
	return cmd
}

func _AnalyticsServiceSendAnalyticsEventCommand(cfg *client.Config) *cobra.Command {
	req := &ModEvent{
		Meta: &Meta{
			Geo: &GeoLoc{},
		},
	}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("SendAnalyticsEvent"),
		Short:  "SendAnalyticsEvent RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "AnalyticsService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "AnalyticsService", "SendAnalyticsEvent"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewAnalyticsServiceClient(cc)
				v := &ModEvent{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.SendAnalyticsEvent(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.Id, cfg.FlagNamer("Id"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.Actor, cfg.FlagNamer("Meta Actor"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.UserId, cfg.FlagNamer("Meta UserId"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.UserName, cfg.FlagNamer("Meta UserName"), "", "")
	flag.TimestampVar(cmd.PersistentFlags(), &req.Meta.Datetime, cfg.FlagNamer("Meta Datetime"), "")
	cmd.PersistentFlags().Float32Var(&req.Meta.Geo.Longitude, cfg.FlagNamer("Meta Geo Longitude"), 0, "")
	cmd.PersistentFlags().Float32Var(&req.Meta.Geo.Latitude, cfg.FlagNamer("Meta Geo Latitude"), 0, "")
	cmd.PersistentFlags().StringVar(&req.Meta.OrgId, cfg.FlagNamer("Meta OrgId"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.OrgName, cfg.FlagNamer("Meta OrgName"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.ProjectId, cfg.FlagNamer("Meta ProjectId"), "", "")
	cmd.PersistentFlags().StringVar(&req.Meta.ProjectName, cfg.FlagNamer("Meta ProjectName"), "", "")
	cmd.PersistentFlags().StringVar(&req.EventType, cfg.FlagNamer("EventType"), "", "")
	flag.BytesBase64Var(cmd.PersistentFlags(), &req.Payload, cfg.FlagNamer("Payload"), "")
	cmd.PersistentFlags().StringVar(&req.PayloadEncoding, cfg.FlagNamer("PayloadEncoding"), "", "string / json / proto / msgpack / whichever")

	return cmd
}

func _AnalyticsServiceDownloadAnalyticsCommand(cfg *client.Config) *cobra.Command {
	req := &DownloadAnalyticsRequest{}

	cmd := &cobra.Command{
		Use:    cfg.CommandNamer("DownloadAnalytics"),
		Short:  "DownloadAnalytics RPC client",
		Long:   "",
		Hidden: false,
		RunE: func(cmd *cobra.Command, args []string) error {
			if cfg.UseEnvVars {
				if err := flag.SetFlagsFromEnv(cmd.Parent().PersistentFlags(), true, cfg.EnvVarNamer, cfg.EnvVarPrefix, "AnalyticsService"); err != nil {
					return err
				}
				if err := flag.SetFlagsFromEnv(cmd.PersistentFlags(), false, cfg.EnvVarNamer, cfg.EnvVarPrefix, "AnalyticsService", "DownloadAnalytics"); err != nil {
					return err
				}
			}
			return client.RoundTrip(cmd.Context(), cfg, func(cc grpc.ClientConnInterface, in iocodec.Decoder, out iocodec.Encoder) error {
				cli := NewAnalyticsServiceClient(cc)
				v := &DownloadAnalyticsRequest{}

				if err := in(v); err != nil {
					return err
				}
				proto.Merge(v, req)

				res, err := cli.DownloadAnalytics(cmd.Context(), v)

				if err != nil {
					return err
				}

				return out(res)

			})
		},
	}

	cmd.PersistentFlags().StringVar(&req.Id, cfg.FlagNamer("Id"), "", "")
	flag.BytesBase64Var(cmd.PersistentFlags(), &req.Filter, cfg.FlagNamer("Filter"), "")
	flag.TimestampVar(cmd.PersistentFlags(), &req.DatetimeStart, cfg.FlagNamer("DatetimeStart"), "")
	flag.TimestampVar(cmd.PersistentFlags(), &req.DatetimeEnd, cfg.FlagNamer("DatetimeEnd"), "")

	return cmd
}
