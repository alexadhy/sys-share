package main

// ============================================================================
// GO
// ============================================================================
// GRPC & Protobuf
//go:generate /usr/bin/env bash -c "echo 'Generating protobuf and grpc services golang'"
//go:generate booty protoc -I./proto/v2/ -I. --go_out=./service/go/rpc/v2 --go_opt=paths=source_relative ./proto/v2/sys_core_models.proto
//go:generate booty protoc -I./proto/v2/ -I. --go-grpc_out=./service/go/rpc/v2/ --cobra_out=./service/go/rpc/v2 --go-grpc_opt=paths=source_relative --cobra_opt=paths=source_relative ./proto/v2/sys_core_services.proto
//go:generate booty protoc -I./proto/v2/ -I. --go-grpc_out=./service/go/rpc/v2/ --go-grpc_opt=paths=source_relative ./proto/v2/sys_core_file_services.proto

// ============================================================================
// Flutter
// ============================================================================
// GRPC & Protobuf
//go:generate /usr/bin/env bash -c "echo 'generating protobuf and grpc services for flutter/dart'"
//go:generate booty protoc -I./proto/v2/ -I. --dart_out=grpc:./service/flu/lib/rpc/v2/ ./proto/v2/sys_core_models.proto ./proto/v2/sys_core_services.proto ./proto/v2/sys_core_file_services.proto
