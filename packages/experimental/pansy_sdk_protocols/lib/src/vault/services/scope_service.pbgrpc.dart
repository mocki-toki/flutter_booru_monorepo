///
//  Generated code. Do not modify.
//  source: vault/services/scope_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../models/account_access_token_request.pb.dart' as $1;
import 'scope_service.pb.dart' as $5;
export 'scope_service.pb.dart';

class ScopeServiceClient extends $grpc.Client {
  static final _$createScope =
      $grpc.ClientMethod<$1.AccountAccessTokenRequest, $5.CreateScopeResponse>(
          '/pansy.vault.ScopeService/CreateScope',
          ($1.AccountAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.CreateScopeResponse.fromBuffer(value));
  static final _$createScopeSession = $grpc.ClientMethod<
          $5.CreateScopeSessionRequest, $5.CreateScopeSessionResponse>(
      '/pansy.vault.ScopeService/CreateScopeSession',
      ($5.CreateScopeSessionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.CreateScopeSessionResponse.fromBuffer(value));

  ScopeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateScopeResponse> createScope(
      $1.AccountAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createScope, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateScopeSessionResponse> createScopeSession(
      $5.CreateScopeSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createScopeSession, request, options: options);
  }
}

abstract class ScopeServiceBase extends $grpc.Service {
  $core.String get $name => 'pansy.vault.ScopeService';

  ScopeServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.AccountAccessTokenRequest,
            $5.CreateScopeResponse>(
        'CreateScope',
        createScope_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AccountAccessTokenRequest.fromBuffer(value),
        ($5.CreateScopeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateScopeSessionRequest,
            $5.CreateScopeSessionResponse>(
        'CreateScopeSession',
        createScopeSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateScopeSessionRequest.fromBuffer(value),
        ($5.CreateScopeSessionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateScopeResponse> createScope_Pre($grpc.ServiceCall call,
      $async.Future<$1.AccountAccessTokenRequest> request) async {
    return createScope(call, await request);
  }

  $async.Future<$5.CreateScopeSessionResponse> createScopeSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.CreateScopeSessionRequest> request) async {
    return createScopeSession(call, await request);
  }

  $async.Future<$5.CreateScopeResponse> createScope(
      $grpc.ServiceCall call, $1.AccountAccessTokenRequest request);
  $async.Future<$5.CreateScopeSessionResponse> createScopeSession(
      $grpc.ServiceCall call, $5.CreateScopeSessionRequest request);
}
