///
//  Generated code. Do not modify.
//  source: vault/services/account_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'account_service.pb.dart' as $0;
import '../models/account_access_token_request.pb.dart' as $1;
import '../../google/protobuf/empty.pb.dart' as $2;
export 'account_service.pb.dart';

class AccountServiceClient extends $grpc.Client {
  static final _$beginAuthentication = $grpc.ClientMethod<
          $0.BeginAuthenticationRequest, $0.BeginAuthenticationResponse>(
      '/pansy.vault.AccountService/BeginAuthentication',
      ($0.BeginAuthenticationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.BeginAuthenticationResponse.fromBuffer(value));
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
          '/pansy.vault.AccountService/Authenticate',
          ($0.AuthenticateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticateResponse.fromBuffer(value));
  static final _$getIndexData =
      $grpc.ClientMethod<$1.AccountAccessTokenRequest, $0.GetIndexDataResponse>(
          '/pansy.vault.AccountService/GetIndexData',
          ($1.AccountAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetIndexDataResponse.fromBuffer(value));
  static final _$setIndexData =
      $grpc.ClientMethod<$0.SetIndexDataRequest, $2.Empty>(
          '/pansy.vault.AccountService/SetIndexData',
          ($0.SetIndexDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.BeginAuthenticationResponse> beginAuthentication(
      $0.BeginAuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$beginAuthentication, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthenticateResponse> authenticate(
      $0.AuthenticateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetIndexDataResponse> getIndexData(
      $1.AccountAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getIndexData, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> setIndexData($0.SetIndexDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setIndexData, request, options: options);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'pansy.vault.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BeginAuthenticationRequest,
            $0.BeginAuthenticationResponse>(
        'BeginAuthentication',
        beginAuthentication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BeginAuthenticationRequest.fromBuffer(value),
        ($0.BeginAuthenticationResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthenticateRequest, $0.AuthenticateResponse>(
            'Authenticate',
            authenticate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthenticateRequest.fromBuffer(value),
            ($0.AuthenticateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AccountAccessTokenRequest,
            $0.GetIndexDataResponse>(
        'GetIndexData',
        getIndexData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AccountAccessTokenRequest.fromBuffer(value),
        ($0.GetIndexDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetIndexDataRequest, $2.Empty>(
        'SetIndexData',
        setIndexData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetIndexDataRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.BeginAuthenticationResponse> beginAuthentication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BeginAuthenticationRequest> request) async {
    return beginAuthentication(call, await request);
  }

  $async.Future<$0.AuthenticateResponse> authenticate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticateRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.GetIndexDataResponse> getIndexData_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AccountAccessTokenRequest> request) async {
    return getIndexData(call, await request);
  }

  $async.Future<$2.Empty> setIndexData_Pre($grpc.ServiceCall call,
      $async.Future<$0.SetIndexDataRequest> request) async {
    return setIndexData(call, await request);
  }

  $async.Future<$0.BeginAuthenticationResponse> beginAuthentication(
      $grpc.ServiceCall call, $0.BeginAuthenticationRequest request);
  $async.Future<$0.AuthenticateResponse> authenticate(
      $grpc.ServiceCall call, $0.AuthenticateRequest request);
  $async.Future<$0.GetIndexDataResponse> getIndexData(
      $grpc.ServiceCall call, $1.AccountAccessTokenRequest request);
  $async.Future<$2.Empty> setIndexData(
      $grpc.ServiceCall call, $0.SetIndexDataRequest request);
}
