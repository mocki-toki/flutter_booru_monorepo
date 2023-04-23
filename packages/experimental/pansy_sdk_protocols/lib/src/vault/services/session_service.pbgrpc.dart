///
//  Generated code. Do not modify.
//  source: vault/services/session_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'session_service.pb.dart' as $7;
export 'session_service.pb.dart';

class SessionServiceClient extends $grpc.Client {
  static final _$refreshAccountSession = $grpc.ClientMethod<
          $7.RefreshSessionRequest, $7.RefreshAccountSessionResponse>(
      '/pansy.vault.SessionService/RefreshAccountSession',
      ($7.RefreshSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RefreshAccountSessionResponse.fromBuffer(value));
  static final _$refreshScopeSession = $grpc.ClientMethod<
          $7.RefreshSessionRequest, $7.RefreshScopeSessionResponse>(
      '/pansy.vault.SessionService/RefreshScopeSession',
      ($7.RefreshSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.RefreshScopeSessionResponse.fromBuffer(value));

  SessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.RefreshAccountSessionResponse> refreshAccountSession(
      $7.RefreshSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshAccountSession, request, options: options);
  }

  $grpc.ResponseFuture<$7.RefreshScopeSessionResponse> refreshScopeSession(
      $7.RefreshSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshScopeSession, request, options: options);
  }
}

abstract class SessionServiceBase extends $grpc.Service {
  $core.String get $name => 'pansy.vault.SessionService';

  SessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.RefreshSessionRequest,
            $7.RefreshAccountSessionResponse>(
        'RefreshAccountSession',
        refreshAccountSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RefreshSessionRequest.fromBuffer(value),
        ($7.RefreshAccountSessionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RefreshSessionRequest,
            $7.RefreshScopeSessionResponse>(
        'RefreshScopeSession',
        refreshScopeSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.RefreshSessionRequest.fromBuffer(value),
        ($7.RefreshScopeSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.RefreshAccountSessionResponse> refreshAccountSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RefreshSessionRequest> request) async {
    return refreshAccountSession(call, await request);
  }

  $async.Future<$7.RefreshScopeSessionResponse> refreshScopeSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.RefreshSessionRequest> request) async {
    return refreshScopeSession(call, await request);
  }

  $async.Future<$7.RefreshAccountSessionResponse> refreshAccountSession(
      $grpc.ServiceCall call, $7.RefreshSessionRequest request);
  $async.Future<$7.RefreshScopeSessionResponse> refreshScopeSession(
      $grpc.ServiceCall call, $7.RefreshSessionRequest request);
}
