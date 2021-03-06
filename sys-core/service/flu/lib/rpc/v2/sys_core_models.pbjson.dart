///
//  Generated code. Do not modify.
//  source: sys_core_models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const TimeSegment$json = const {
  '1': 'TimeSegment',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'HOUR', '2': 1},
    const {'1': 'DAY', '2': 2},
  ],
};

const SingleRestoreResult$json = const {
  '1': 'SingleRestoreResult',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

const SingleRestoreRequest$json = const {
  '1': 'SingleRestoreRequest',
  '2': const [
    const {'1': 'backupFile', '3': 1, '4': 1, '5': 9, '10': 'backupFile'},
  ],
};

const SingleBackupResult$json = const {
  '1': 'SingleBackupResult',
  '2': const [
    const {'1': 'backupFile', '3': 1, '4': 1, '5': 9, '10': 'backupFile'},
  ],
};

const RestoreAllRequest$json = const {
  '1': 'RestoreAllRequest',
  '2': const [
    const {'1': 'restore_version', '3': 1, '4': 1, '5': 9, '10': 'restoreVersion'},
    const {'1': 'backup_files', '3': 2, '4': 3, '5': 11, '6': '.v2.sys_core.services.RestoreAllRequest.BackupFilesEntry', '10': 'backupFiles'},
  ],
  '3': const [RestoreAllRequest_BackupFilesEntry$json],
};

const RestoreAllRequest_BackupFilesEntry$json = const {
  '1': 'BackupFilesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const RestoreAllResult$json = const {
  '1': 'RestoreAllResult',
  '2': const [
    const {'1': 'restore_results', '3': 1, '4': 3, '5': 11, '6': '.v2.sys_core.services.SingleRestoreResult', '10': 'restoreResults'},
  ],
};

const BackupAllResult$json = const {
  '1': 'BackupAllResult',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'backup_files', '3': 2, '4': 3, '5': 11, '6': '.v2.sys_core.services.SingleBackupResult', '10': 'backupFiles'},
  ],
};

const ListBackupRequest$json = const {
  '1': 'ListBackupRequest',
  '2': const [
    const {'1': 'backup_version', '3': 1, '4': 1, '5': 9, '10': 'backupVersion'},
  ],
};

const ListBackupResult$json = const {
  '1': 'ListBackupResult',
  '2': const [
    const {'1': 'backup_versions', '3': 1, '4': 3, '5': 11, '6': '.v2.sys_core.services.BackupAllResult', '10': 'backupVersions'},
  ],
};

const EventRequest$json = const {
  '1': 'EventRequest',
  '2': const [
    const {'1': 'eventName', '3': 1, '4': 1, '5': 9, '10': 'eventName'},
    const {'1': 'initiator', '3': 2, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'userId', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'jsonPayload', '3': 4, '4': 1, '5': 12, '10': 'jsonPayload'},
  ],
};

const EventResponse$json = const {
  '1': 'EventResponse',
  '2': const [
    const {'1': 'reply', '3': 1, '4': 1, '5': 12, '10': 'reply'},
  ],
};

const EmailRequest$json = const {
  '1': 'EmailRequest',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'subject', '3': 2, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'recipients', '3': 3, '4': 3, '5': 11, '6': '.v2.sys_core.services.EmailRequest.RecipientsEntry', '10': 'recipients'},
    const {'1': 'content', '3': 4, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'cc', '3': 5, '4': 3, '5': 9, '10': 'cc'},
    const {'1': 'bcc', '3': 6, '4': 3, '5': 9, '10': 'bcc'},
    const {'1': 'attachments', '3': 7, '4': 3, '5': 12, '10': 'attachments'},
    const {'1': 'sender_name', '3': 8, '4': 1, '5': 9, '10': 'senderName'},
  ],
  '3': const [EmailRequest_RecipientsEntry$json],
};

const EmailRequest_RecipientsEntry$json = const {
  '1': 'RecipientsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const EmailResponse$json = const {
  '1': 'EmailResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'err_message', '3': 2, '4': 1, '5': 9, '10': 'errMessage'},
    const {'1': 'success_message', '3': 3, '4': 1, '5': 9, '10': 'successMessage'},
  ],
};

const FileUploadRequest$json = const {
  '1': 'FileUploadRequest',
  '2': const [
    const {'1': 'file_info', '3': 1, '4': 1, '5': 11, '6': '.v2.sys_core.services.FileInfo', '10': 'fileInfo'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 12, '10': 'chunk'},
  ],
};

const FileInfo$json = const {
  '1': 'FileInfo',
  '2': const [
    const {'1': 'mime_type', '3': 1, '4': 1, '5': 9, '10': 'mimeType'},
    const {'1': 'is_dir', '3': 2, '4': 1, '5': 8, '10': 'isDir'},
    const {'1': 'resource_id', '3': 3, '4': 1, '5': 9, '10': 'resourceId'},
  ],
};

const FileUploadResponse$json = const {
  '1': 'FileUploadResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'error_msg', '3': 3, '4': 1, '5': 9, '10': 'errorMsg'},
    const {'1': 'resource_id', '3': 4, '4': 1, '5': 9, '10': 'resourceId'},
  ],
};

const FileDownloadRequest$json = const {
  '1': 'FileDownloadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const FileDownloadResponse$json = const {
  '1': 'FileDownloadResponse',
  '2': const [
    const {'1': 'chunk', '3': 1, '4': 1, '5': 12, '10': 'chunk'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'error_msg', '3': 3, '4': 1, '5': 9, '10': 'errorMsg'},
    const {'1': 'total_size', '3': 4, '4': 1, '5': 3, '10': 'totalSize'},
    const {'1': 'is_compressed', '3': 5, '4': 1, '5': 8, '10': 'isCompressed'},
  ],
};

const GeoLoc$json = const {
  '1': 'GeoLoc',
  '2': const [
    const {'1': 'longitude', '3': 1, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'latitude', '3': 2, '4': 1, '5': 2, '10': 'latitude'},
  ],
};

const Meta$json = const {
  '1': 'Meta',
  '2': const [
    const {'1': 'actor', '3': 1, '4': 1, '5': 9, '10': 'actor'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'user_name', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'datetime', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'datetime'},
    const {'1': 'geo', '3': 5, '4': 1, '5': 11, '6': '.v2.sys_core.services.GeoLoc', '10': 'geo'},
    const {'1': 'org_id', '3': 6, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'org_name', '3': 7, '4': 1, '5': 9, '10': 'orgName'},
    const {'1': 'project_id', '3': 8, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'project_name', '3': 9, '4': 1, '5': 9, '10': 'projectName'},
  ],
};

const ModEvent$json = const {
  '1': 'ModEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'meta', '3': 2, '4': 1, '5': 11, '6': '.v2.sys_core.services.Meta', '10': 'meta'},
    const {'1': 'event_type', '3': 3, '4': 1, '5': 9, '10': 'eventType'},
    const {'1': 'payload', '3': 4, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'payload_encoding', '3': 5, '4': 1, '5': 9, '10': 'payloadEncoding'},
  ],
};

const AggMeta$json = const {
  '1': 'AggMeta',
  '2': const [
    const {'1': 'time_segment', '3': 1, '4': 1, '5': 14, '6': '.v2.sys_core.services.TimeSegment', '10': 'timeSegment'},
    const {'1': 'datetime_start', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'datetimeStart'},
    const {'1': 'datetime_end', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'datetimeEnd'},
  ],
};

const AggModEvent$json = const {
  '1': 'AggModEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'agg_meta', '3': 2, '4': 1, '5': 11, '6': '.v2.sys_core.services.AggMeta', '10': 'aggMeta'},
    const {'1': 'event_metas', '3': 3, '4': 3, '5': 11, '6': '.v2.sys_core.services.Meta', '10': 'eventMetas'},
    const {'1': 'event_type', '3': 4, '4': 1, '5': 9, '10': 'eventType'},
    const {'1': 'payload', '3': 5, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'count', '3': 6, '4': 1, '5': 3, '10': 'count'},
  ],
};

const DownloadAnalyticsRequest$json = const {
  '1': 'DownloadAnalyticsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 12, '10': 'filter'},
    const {'1': 'datetime_start', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'datetimeStart'},
    const {'1': 'datetime_end', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'datetimeEnd'},
  ],
};

const DownloadAnalyticsResponse$json = const {
  '1': 'DownloadAnalyticsResponse',
  '2': const [
    const {'1': 'analytics_bytes', '3': 1, '4': 1, '5': 12, '10': 'analyticsBytes'},
    const {'1': 'analytics_url', '3': 2, '4': 1, '5': 9, '10': 'analyticsUrl'},
    const {'1': 'analytics_file', '3': 3, '4': 1, '5': 9, '10': 'analyticsFile'},
  ],
};

