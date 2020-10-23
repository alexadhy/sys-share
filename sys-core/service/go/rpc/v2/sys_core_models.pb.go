// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.25.0
// 	protoc        v3.12.4
// source: sys_core_models.proto

package v2

import (
	proto "github.com/golang/protobuf/proto"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type RestoreResult struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Result string `protobuf:"bytes,1,opt,name=result,proto3" json:"result,omitempty"`
}

func (x *RestoreResult) Reset() {
	*x = RestoreResult{}
	if protoimpl.UnsafeEnabled {
		mi := &file_sys_core_models_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RestoreResult) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RestoreResult) ProtoMessage() {}

func (x *RestoreResult) ProtoReflect() protoreflect.Message {
	mi := &file_sys_core_models_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RestoreResult.ProtoReflect.Descriptor instead.
func (*RestoreResult) Descriptor() ([]byte, []int) {
	return file_sys_core_models_proto_rawDescGZIP(), []int{0}
}

func (x *RestoreResult) GetResult() string {
	if x != nil {
		return x.Result
	}
	return ""
}

type BackupResult struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	BackupFile string `protobuf:"bytes,1,opt,name=backupFile,proto3" json:"backupFile,omitempty"`
}

func (x *BackupResult) Reset() {
	*x = BackupResult{}
	if protoimpl.UnsafeEnabled {
		mi := &file_sys_core_models_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BackupResult) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BackupResult) ProtoMessage() {}

func (x *BackupResult) ProtoReflect() protoreflect.Message {
	mi := &file_sys_core_models_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BackupResult.ProtoReflect.Descriptor instead.
func (*BackupResult) Descriptor() ([]byte, []int) {
	return file_sys_core_models_proto_rawDescGZIP(), []int{1}
}

func (x *BackupResult) GetBackupFile() string {
	if x != nil {
		return x.BackupFile
	}
	return ""
}

type ListBackupResult struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	BackupFiles []*BackupResult `protobuf:"bytes,1,rep,name=backupFiles,proto3" json:"backupFiles,omitempty"`
}

func (x *ListBackupResult) Reset() {
	*x = ListBackupResult{}
	if protoimpl.UnsafeEnabled {
		mi := &file_sys_core_models_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListBackupResult) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListBackupResult) ProtoMessage() {}

func (x *ListBackupResult) ProtoReflect() protoreflect.Message {
	mi := &file_sys_core_models_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListBackupResult.ProtoReflect.Descriptor instead.
func (*ListBackupResult) Descriptor() ([]byte, []int) {
	return file_sys_core_models_proto_rawDescGZIP(), []int{2}
}

func (x *ListBackupResult) GetBackupFiles() []*BackupResult {
	if x != nil {
		return x.BackupFiles
	}
	return nil
}

type RestoreRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	BackupFile string `protobuf:"bytes,1,opt,name=backupFile,proto3" json:"backupFile,omitempty"`
}

func (x *RestoreRequest) Reset() {
	*x = RestoreRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_sys_core_models_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RestoreRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RestoreRequest) ProtoMessage() {}

func (x *RestoreRequest) ProtoReflect() protoreflect.Message {
	mi := &file_sys_core_models_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RestoreRequest.ProtoReflect.Descriptor instead.
func (*RestoreRequest) Descriptor() ([]byte, []int) {
	return file_sys_core_models_proto_rawDescGZIP(), []int{3}
}

func (x *RestoreRequest) GetBackupFile() string {
	if x != nil {
		return x.BackupFile
	}
	return ""
}

var File_sys_core_models_proto protoreflect.FileDescriptor

var file_sys_core_models_proto_rawDesc = []byte{
	0x0a, 0x15, 0x73, 0x79, 0x73, 0x5f, 0x63, 0x6f, 0x72, 0x65, 0x5f, 0x6d, 0x6f, 0x64, 0x65, 0x6c,
	0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x14, 0x76, 0x32, 0x2e, 0x73, 0x79, 0x73, 0x5f,
	0x63, 0x6f, 0x72, 0x65, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x22, 0x27, 0x0a,
	0x0d, 0x52, 0x65, 0x73, 0x74, 0x6f, 0x72, 0x65, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x12, 0x16,
	0x0a, 0x06, 0x72, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06,
	0x72, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x22, 0x2e, 0x0a, 0x0c, 0x42, 0x61, 0x63, 0x6b, 0x75, 0x70,
	0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x12, 0x1e, 0x0a, 0x0a, 0x62, 0x61, 0x63, 0x6b, 0x75, 0x70,
	0x46, 0x69, 0x6c, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x62, 0x61, 0x63, 0x6b,
	0x75, 0x70, 0x46, 0x69, 0x6c, 0x65, 0x22, 0x58, 0x0a, 0x10, 0x4c, 0x69, 0x73, 0x74, 0x42, 0x61,
	0x63, 0x6b, 0x75, 0x70, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x12, 0x44, 0x0a, 0x0b, 0x62, 0x61,
	0x63, 0x6b, 0x75, 0x70, 0x46, 0x69, 0x6c, 0x65, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x22, 0x2e, 0x76, 0x32, 0x2e, 0x73, 0x79, 0x73, 0x5f, 0x63, 0x6f, 0x72, 0x65, 0x2e, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x42, 0x61, 0x63, 0x6b, 0x75, 0x70, 0x52, 0x65, 0x73,
	0x75, 0x6c, 0x74, 0x52, 0x0b, 0x62, 0x61, 0x63, 0x6b, 0x75, 0x70, 0x46, 0x69, 0x6c, 0x65, 0x73,
	0x22, 0x30, 0x0a, 0x0e, 0x52, 0x65, 0x73, 0x74, 0x6f, 0x72, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x1e, 0x0a, 0x0a, 0x62, 0x61, 0x63, 0x6b, 0x75, 0x70, 0x46, 0x69, 0x6c, 0x65,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x62, 0x61, 0x63, 0x6b, 0x75, 0x70, 0x46, 0x69,
	0x6c, 0x65, 0x42, 0x3f, 0x5a, 0x3d, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d,
	0x2f, 0x67, 0x65, 0x74, 0x63, 0x6f, 0x75, 0x72, 0x61, 0x67, 0x65, 0x6e, 0x6f, 0x77, 0x2f, 0x73,
	0x79, 0x73, 0x2d, 0x73, 0x68, 0x61, 0x72, 0x65, 0x2f, 0x73, 0x79, 0x73, 0x2d, 0x63, 0x6f, 0x72,
	0x65, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2f, 0x67, 0x6f, 0x2f, 0x72, 0x70, 0x63,
	0x2f, 0x76, 0x32, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_sys_core_models_proto_rawDescOnce sync.Once
	file_sys_core_models_proto_rawDescData = file_sys_core_models_proto_rawDesc
)

func file_sys_core_models_proto_rawDescGZIP() []byte {
	file_sys_core_models_proto_rawDescOnce.Do(func() {
		file_sys_core_models_proto_rawDescData = protoimpl.X.CompressGZIP(file_sys_core_models_proto_rawDescData)
	})
	return file_sys_core_models_proto_rawDescData
}

var file_sys_core_models_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_sys_core_models_proto_goTypes = []interface{}{
	(*RestoreResult)(nil),    // 0: v2.sys_core.services.RestoreResult
	(*BackupResult)(nil),     // 1: v2.sys_core.services.BackupResult
	(*ListBackupResult)(nil), // 2: v2.sys_core.services.ListBackupResult
	(*RestoreRequest)(nil),   // 3: v2.sys_core.services.RestoreRequest
}
var file_sys_core_models_proto_depIdxs = []int32{
	1, // 0: v2.sys_core.services.ListBackupResult.backupFiles:type_name -> v2.sys_core.services.BackupResult
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_sys_core_models_proto_init() }
func file_sys_core_models_proto_init() {
	if File_sys_core_models_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_sys_core_models_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RestoreResult); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_sys_core_models_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BackupResult); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_sys_core_models_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListBackupResult); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_sys_core_models_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RestoreRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_sys_core_models_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_sys_core_models_proto_goTypes,
		DependencyIndexes: file_sys_core_models_proto_depIdxs,
		MessageInfos:      file_sys_core_models_proto_msgTypes,
	}.Build()
	File_sys_core_models_proto = out.File
	file_sys_core_models_proto_rawDesc = nil
	file_sys_core_models_proto_goTypes = nil
	file_sys_core_models_proto_depIdxs = nil
}
