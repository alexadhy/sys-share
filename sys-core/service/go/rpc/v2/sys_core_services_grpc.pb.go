// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package v2

import (
	context "context"
	empty "github.com/golang/protobuf/ptypes/empty"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion7

// DbAdminServiceClient is the client API for DbAdminService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type DbAdminServiceClient interface {
	Backup(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*BackupResult, error)
	ListBackup(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*ListBackupResult, error)
	Restore(ctx context.Context, in *RestoreRequest, opts ...grpc.CallOption) (*RestoreResult, error)
}

type dbAdminServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewDbAdminServiceClient(cc grpc.ClientConnInterface) DbAdminServiceClient {
	return &dbAdminServiceClient{cc}
}

var dbAdminServiceBackupStreamDesc = &grpc.StreamDesc{
	StreamName: "Backup",
}

func (c *dbAdminServiceClient) Backup(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*BackupResult, error) {
	out := new(BackupResult)
	err := c.cc.Invoke(ctx, "/v2.sys_core.services.DbAdminService/Backup", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

var dbAdminServiceListBackupStreamDesc = &grpc.StreamDesc{
	StreamName: "ListBackup",
}

func (c *dbAdminServiceClient) ListBackup(ctx context.Context, in *empty.Empty, opts ...grpc.CallOption) (*ListBackupResult, error) {
	out := new(ListBackupResult)
	err := c.cc.Invoke(ctx, "/v2.sys_core.services.DbAdminService/ListBackup", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

var dbAdminServiceRestoreStreamDesc = &grpc.StreamDesc{
	StreamName: "Restore",
}

func (c *dbAdminServiceClient) Restore(ctx context.Context, in *RestoreRequest, opts ...grpc.CallOption) (*RestoreResult, error) {
	out := new(RestoreResult)
	err := c.cc.Invoke(ctx, "/v2.sys_core.services.DbAdminService/Restore", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// DbAdminServiceService is the service API for DbAdminService service.
// Fields should be assigned to their respective handler implementations only before
// RegisterDbAdminServiceService is called.  Any unassigned fields will result in the
// handler for that method returning an Unimplemented error.
type DbAdminServiceService struct {
	Backup     func(context.Context, *empty.Empty) (*BackupResult, error)
	ListBackup func(context.Context, *empty.Empty) (*ListBackupResult, error)
	Restore    func(context.Context, *RestoreRequest) (*RestoreResult, error)
}

func (s *DbAdminServiceService) backup(_ interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	if s.Backup == nil {
		return nil, status.Errorf(codes.Unimplemented, "method Backup not implemented")
	}
	in := new(empty.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return s.Backup(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     s,
		FullMethod: "/v2.sys_core.services.DbAdminService/Backup",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return s.Backup(ctx, req.(*empty.Empty))
	}
	return interceptor(ctx, in, info, handler)
}
func (s *DbAdminServiceService) listBackup(_ interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	if s.ListBackup == nil {
		return nil, status.Errorf(codes.Unimplemented, "method ListBackup not implemented")
	}
	in := new(empty.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return s.ListBackup(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     s,
		FullMethod: "/v2.sys_core.services.DbAdminService/ListBackup",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return s.ListBackup(ctx, req.(*empty.Empty))
	}
	return interceptor(ctx, in, info, handler)
}
func (s *DbAdminServiceService) restore(_ interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	if s.Restore == nil {
		return nil, status.Errorf(codes.Unimplemented, "method Restore not implemented")
	}
	in := new(RestoreRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return s.Restore(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     s,
		FullMethod: "/v2.sys_core.services.DbAdminService/Restore",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return s.Restore(ctx, req.(*RestoreRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// RegisterDbAdminServiceService registers a service implementation with a gRPC server.
func RegisterDbAdminServiceService(s grpc.ServiceRegistrar, srv *DbAdminServiceService) {
	sd := grpc.ServiceDesc{
		ServiceName: "v2.sys_core.services.DbAdminService",
		Methods: []grpc.MethodDesc{
			{
				MethodName: "Backup",
				Handler:    srv.backup,
			},
			{
				MethodName: "ListBackup",
				Handler:    srv.listBackup,
			},
			{
				MethodName: "Restore",
				Handler:    srv.restore,
			},
		},
		Streams:  []grpc.StreamDesc{},
		Metadata: "sys_core_services.proto",
	}

	s.RegisterService(&sd, nil)
}

// NewDbAdminServiceService creates a new DbAdminServiceService containing the
// implemented methods of the DbAdminService service in s.  Any unimplemented
// methods will result in the gRPC server returning an UNIMPLEMENTED status to the client.
// This includes situations where the method handler is misspelled or has the wrong
// signature.  For this reason, this function should be used with great care and
// is not recommended to be used by most users.
func NewDbAdminServiceService(s interface{}) *DbAdminServiceService {
	ns := &DbAdminServiceService{}
	if h, ok := s.(interface {
		Backup(context.Context, *empty.Empty) (*BackupResult, error)
	}); ok {
		ns.Backup = h.Backup
	}
	if h, ok := s.(interface {
		ListBackup(context.Context, *empty.Empty) (*ListBackupResult, error)
	}); ok {
		ns.ListBackup = h.ListBackup
	}
	if h, ok := s.(interface {
		Restore(context.Context, *RestoreRequest) (*RestoreResult, error)
	}); ok {
		ns.Restore = h.Restore
	}
	return ns
}

// UnstableDbAdminServiceService is the service API for DbAdminService service.
// New methods may be added to this interface if they are added to the service
// definition, which is not a backward-compatible change.  For this reason,
// use of this type is not recommended.
type UnstableDbAdminServiceService interface {
	Backup(context.Context, *empty.Empty) (*BackupResult, error)
	ListBackup(context.Context, *empty.Empty) (*ListBackupResult, error)
	Restore(context.Context, *RestoreRequest) (*RestoreResult, error)
}

// BusServiceClient is the client API for BusService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type BusServiceClient interface {
	Broadcast(ctx context.Context, in *EventRequest, opts ...grpc.CallOption) (*EventResponse, error)
}

type busServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewBusServiceClient(cc grpc.ClientConnInterface) BusServiceClient {
	return &busServiceClient{cc}
}

var busServiceBroadcastStreamDesc = &grpc.StreamDesc{
	StreamName: "Broadcast",
}

func (c *busServiceClient) Broadcast(ctx context.Context, in *EventRequest, opts ...grpc.CallOption) (*EventResponse, error) {
	out := new(EventResponse)
	err := c.cc.Invoke(ctx, "/v2.sys_core.services.BusService/Broadcast", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// BusServiceService is the service API for BusService service.
// Fields should be assigned to their respective handler implementations only before
// RegisterBusServiceService is called.  Any unassigned fields will result in the
// handler for that method returning an Unimplemented error.
type BusServiceService struct {
	Broadcast func(context.Context, *EventRequest) (*EventResponse, error)
}

func (s *BusServiceService) broadcast(_ interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	if s.Broadcast == nil {
		return nil, status.Errorf(codes.Unimplemented, "method Broadcast not implemented")
	}
	in := new(EventRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return s.Broadcast(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     s,
		FullMethod: "/v2.sys_core.services.BusService/Broadcast",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return s.Broadcast(ctx, req.(*EventRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// RegisterBusServiceService registers a service implementation with a gRPC server.
func RegisterBusServiceService(s grpc.ServiceRegistrar, srv *BusServiceService) {
	sd := grpc.ServiceDesc{
		ServiceName: "v2.sys_core.services.BusService",
		Methods: []grpc.MethodDesc{
			{
				MethodName: "Broadcast",
				Handler:    srv.broadcast,
			},
		},
		Streams:  []grpc.StreamDesc{},
		Metadata: "sys_core_services.proto",
	}

	s.RegisterService(&sd, nil)
}

// NewBusServiceService creates a new BusServiceService containing the
// implemented methods of the BusService service in s.  Any unimplemented
// methods will result in the gRPC server returning an UNIMPLEMENTED status to the client.
// This includes situations where the method handler is misspelled or has the wrong
// signature.  For this reason, this function should be used with great care and
// is not recommended to be used by most users.
func NewBusServiceService(s interface{}) *BusServiceService {
	ns := &BusServiceService{}
	if h, ok := s.(interface {
		Broadcast(context.Context, *EventRequest) (*EventResponse, error)
	}); ok {
		ns.Broadcast = h.Broadcast
	}
	return ns
}

// UnstableBusServiceService is the service API for BusService service.
// New methods may be added to this interface if they are added to the service
// definition, which is not a backward-compatible change.  For this reason,
// use of this type is not recommended.
type UnstableBusServiceService interface {
	Broadcast(context.Context, *EventRequest) (*EventResponse, error)
}