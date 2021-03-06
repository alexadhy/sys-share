///
//  Generated code. Do not modify.
//  source: sys_core_services.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'sys_core_models.pb.dart' as $1;
export 'sys_core_services.pb.dart';

class DbAdminServiceClient extends $grpc.Client {
  static final _$backup = $grpc.ClientMethod<$0.Empty, $1.BackupAllResult>(
      '/v2.sys_core.services.DbAdminService/Backup',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BackupAllResult.fromBuffer(value));
  static final _$listBackup =
      $grpc.ClientMethod<$1.ListBackupRequest, $1.ListBackupResult>(
          '/v2.sys_core.services.DbAdminService/ListBackup',
          ($1.ListBackupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListBackupResult.fromBuffer(value));
  static final _$restore =
      $grpc.ClientMethod<$1.RestoreAllRequest, $1.RestoreAllResult>(
          '/v2.sys_core.services.DbAdminService/Restore',
          ($1.RestoreAllRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RestoreAllResult.fromBuffer(value));

  DbAdminServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.BackupAllResult> backup($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$backup, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.ListBackupResult> listBackup(
      $1.ListBackupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listBackup, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.RestoreAllResult> restore(
      $1.RestoreAllRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$restore, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class DbAdminServiceBase extends $grpc.Service {
  $core.String get $name => 'v2.sys_core.services.DbAdminService';

  DbAdminServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.BackupAllResult>(
        'Backup',
        backup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.BackupAllResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListBackupRequest, $1.ListBackupResult>(
        'ListBackup',
        listBackup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListBackupRequest.fromBuffer(value),
        ($1.ListBackupResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RestoreAllRequest, $1.RestoreAllResult>(
        'Restore',
        restore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RestoreAllRequest.fromBuffer(value),
        ($1.RestoreAllResult value) => value.writeToBuffer()));
  }

  $async.Future<$1.BackupAllResult> backup_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return backup(call, await request);
  }

  $async.Future<$1.ListBackupResult> listBackup_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListBackupRequest> request) async {
    return listBackup(call, await request);
  }

  $async.Future<$1.RestoreAllResult> restore_Pre($grpc.ServiceCall call,
      $async.Future<$1.RestoreAllRequest> request) async {
    return restore(call, await request);
  }

  $async.Future<$1.BackupAllResult> backup(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.ListBackupResult> listBackup(
      $grpc.ServiceCall call, $1.ListBackupRequest request);
  $async.Future<$1.RestoreAllResult> restore(
      $grpc.ServiceCall call, $1.RestoreAllRequest request);
}

class BusServiceClient extends $grpc.Client {
  static final _$broadcast =
      $grpc.ClientMethod<$1.EventRequest, $1.EventResponse>(
          '/v2.sys_core.services.BusService/Broadcast',
          ($1.EventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EventResponse.fromBuffer(value));

  BusServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.EventResponse> broadcast($1.EventRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$broadcast, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BusServiceBase extends $grpc.Service {
  $core.String get $name => 'v2.sys_core.services.BusService';

  BusServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.EventRequest, $1.EventResponse>(
        'Broadcast',
        broadcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EventRequest.fromBuffer(value),
        ($1.EventResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.EventResponse> broadcast_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EventRequest> request) async {
    return broadcast(call, await request);
  }

  $async.Future<$1.EventResponse> broadcast(
      $grpc.ServiceCall call, $1.EventRequest request);
}

class EmailServiceClient extends $grpc.Client {
  static final _$sendMail =
      $grpc.ClientMethod<$1.EmailRequest, $1.EmailResponse>(
          '/v2.sys_core.services.EmailService/SendMail',
          ($1.EmailRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.EmailResponse.fromBuffer(value));

  EmailServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.EmailResponse> sendMail($1.EmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendMail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class EmailServiceBase extends $grpc.Service {
  $core.String get $name => 'v2.sys_core.services.EmailService';

  EmailServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.EmailRequest, $1.EmailResponse>(
        'SendMail',
        sendMail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EmailRequest.fromBuffer(value),
        ($1.EmailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.EmailResponse> sendMail_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EmailRequest> request) async {
    return sendMail(call, await request);
  }

  $async.Future<$1.EmailResponse> sendMail(
      $grpc.ServiceCall call, $1.EmailRequest request);
}

class AnalyticsServiceClient extends $grpc.Client {
  static final _$sendAnalyticsEvent = $grpc.ClientMethod<$1.ModEvent, $0.Empty>(
      '/v2.sys_core.services.AnalyticsService/SendAnalyticsEvent',
      ($1.ModEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$downloadAnalytics = $grpc.ClientMethod<
          $1.DownloadAnalyticsRequest, $1.DownloadAnalyticsResponse>(
      '/v2.sys_core.services.AnalyticsService/DownloadAnalytics',
      ($1.DownloadAnalyticsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DownloadAnalyticsResponse.fromBuffer(value));

  AnalyticsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Empty> sendAnalyticsEvent($1.ModEvent request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendAnalyticsEvent, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.DownloadAnalyticsResponse> downloadAnalytics(
      $1.DownloadAnalyticsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$downloadAnalytics, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AnalyticsServiceBase extends $grpc.Service {
  $core.String get $name => 'v2.sys_core.services.AnalyticsService';

  AnalyticsServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ModEvent, $0.Empty>(
        'SendAnalyticsEvent',
        sendAnalyticsEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ModEvent.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DownloadAnalyticsRequest,
            $1.DownloadAnalyticsResponse>(
        'DownloadAnalytics',
        downloadAnalytics_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DownloadAnalyticsRequest.fromBuffer(value),
        ($1.DownloadAnalyticsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> sendAnalyticsEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ModEvent> request) async {
    return sendAnalyticsEvent(call, await request);
  }

  $async.Future<$1.DownloadAnalyticsResponse> downloadAnalytics_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DownloadAnalyticsRequest> request) async {
    return downloadAnalytics(call, await request);
  }

  $async.Future<$0.Empty> sendAnalyticsEvent(
      $grpc.ServiceCall call, $1.ModEvent request);
  $async.Future<$1.DownloadAnalyticsResponse> downloadAnalytics(
      $grpc.ServiceCall call, $1.DownloadAnalyticsRequest request);
}
