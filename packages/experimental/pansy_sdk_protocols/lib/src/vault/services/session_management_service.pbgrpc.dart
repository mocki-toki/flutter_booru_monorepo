///
//  Generated code. Do not modify.
//  source: vault/services/session_management_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'session_management_service.pb.dart' as $6;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'session_management_service.pb.dart';

class SessionManagementServiceClient extends $grpc.Client {
  static final _$getSessions =
      $grpc.ClientMethod<$6.GetSessionsRequest, $6.GetSessionsResponse>(
          '/pansy.vault.SessionManagementService/GetSessions',
          ($6.GetSessionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GetSessionsResponse.fromBuffer(value));
  static final _$revokeSession =
      $grpc.ClientMethod<$6.RevokeSessionRequest, $2.Empty>(
          '/pansy.vault.SessionManagementService/RevokeSession',
          ($6.RevokeSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  SessionManagementServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetSessionsResponse> getSessions(
      $6.GetSessionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessions, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> revokeSession($6.RevokeSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeSession, request, options: options);
  }
}

abstract class SessionManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'pansy.vault.SessionManagementService';

  SessionManagementServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$6.GetSessionsRequest, $6.GetSessionsResponse>(
            'GetSessions',
            getSessions_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.GetSessionsRequest.fromBuffer(value),
            ($6.GetSessionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RevokeSessionRequest, $2.Empty>(
        'RevokeSession',
        revokeSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RevokeSessionRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetSessionsResponse> getSessions_Pre($grpc.ServiceCall call,
      $async.Future<$6.GetSessionsRequest> request) async {
    return getSessions(call, await request);
  }

  $async.Future<$2.Empty> revokeSession_Pre($grpc.ServiceCall call,
      $async.Future<$6.RevokeSessionRequest> request) async {
    return revokeSession(call, await request);
  }

  $async.Future<$6.GetSessionsResponse> getSessions(
      $grpc.ServiceCall call, $6.GetSessionsRequest request);
  $async.Future<$2.Empty> revokeSession(
      $grpc.ServiceCall call, $6.RevokeSessionRequest request);
}
