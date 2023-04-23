///
//  Generated code. Do not modify.
//  source: vault/services/data_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../models/scope_access_token_request.pb.dart' as $3;
import '../../google/protobuf/empty.pb.dart' as $2;
import 'data_service.pb.dart' as $4;
export 'data_service.pb.dart';

class DataServiceClient extends $grpc.Client {
  static final _$beginTransaction =
      $grpc.ClientMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
          '/pansy.vault.DataService/BeginTransaction',
          ($3.ScopeAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$commitTransaction =
      $grpc.ClientMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
          '/pansy.vault.DataService/CommitTransaction',
          ($3.ScopeAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$rollbackTransaction =
      $grpc.ClientMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
          '/pansy.vault.DataService/RollbackTransaction',
          ($3.ScopeAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$4.ReadRequest, $4.ReadResponse>(
      '/pansy.vault.DataService/Read',
      ($4.ReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ReadResponse.fromBuffer(value));
  static final _$write = $grpc.ClientMethod<$4.WriteRequest, $2.Empty>(
      '/pansy.vault.DataService/Write',
      ($4.WriteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$4.ListRequest, $4.ListResponse>(
      '/pansy.vault.DataService/List',
      ($4.ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$4.DeleteRequest, $2.Empty>(
      '/pansy.vault.DataService/Delete',
      ($4.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$getBoxUpdateStream =
      $grpc.ClientMethod<$3.ScopeAccessTokenRequest, $4.BoxUpdate>(
          '/pansy.vault.DataService/GetBoxUpdateStream',
          ($3.ScopeAccessTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.BoxUpdate.fromBuffer(value));

  DataServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Empty> beginTransaction(
      $3.ScopeAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$beginTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> commitTransaction(
      $3.ScopeAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commitTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> rollbackTransaction(
      $3.ScopeAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rollbackTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$4.ReadResponse> read($4.ReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> write($4.WriteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$write, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListResponse> list($4.ListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> delete($4.DeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseStream<$4.BoxUpdate> getBoxUpdateStream(
      $3.ScopeAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getBoxUpdateStream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DataServiceBase extends $grpc.Service {
  $core.String get $name => 'pansy.vault.DataService';

  DataServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
        'BeginTransaction',
        beginTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ScopeAccessTokenRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
        'CommitTransaction',
        commitTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ScopeAccessTokenRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ScopeAccessTokenRequest, $2.Empty>(
        'RollbackTransaction',
        rollbackTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ScopeAccessTokenRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReadRequest, $4.ReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ReadRequest.fromBuffer(value),
        ($4.ReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.WriteRequest, $2.Empty>(
        'Write',
        write_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.WriteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ListRequest, $4.ListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ListRequest.fromBuffer(value),
        ($4.ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteRequest, $2.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ScopeAccessTokenRequest, $4.BoxUpdate>(
        'GetBoxUpdateStream',
        getBoxUpdateStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $3.ScopeAccessTokenRequest.fromBuffer(value),
        ($4.BoxUpdate value) => value.writeToBuffer()));
  }

  $async.Future<$2.Empty> beginTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$3.ScopeAccessTokenRequest> request) async {
    return beginTransaction(call, await request);
  }

  $async.Future<$2.Empty> commitTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$3.ScopeAccessTokenRequest> request) async {
    return commitTransaction(call, await request);
  }

  $async.Future<$2.Empty> rollbackTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$3.ScopeAccessTokenRequest> request) async {
    return rollbackTransaction(call, await request);
  }

  $async.Future<$4.ReadResponse> read_Pre(
      $grpc.ServiceCall call, $async.Future<$4.ReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$2.Empty> write_Pre(
      $grpc.ServiceCall call, $async.Future<$4.WriteRequest> request) async {
    return write(call, await request);
  }

  $async.Future<$4.ListResponse> list_Pre(
      $grpc.ServiceCall call, $async.Future<$4.ListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$2.Empty> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$4.DeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Stream<$4.BoxUpdate> getBoxUpdateStream_Pre($grpc.ServiceCall call,
      $async.Future<$3.ScopeAccessTokenRequest> request) async* {
    yield* getBoxUpdateStream(call, await request);
  }

  $async.Future<$2.Empty> beginTransaction(
      $grpc.ServiceCall call, $3.ScopeAccessTokenRequest request);
  $async.Future<$2.Empty> commitTransaction(
      $grpc.ServiceCall call, $3.ScopeAccessTokenRequest request);
  $async.Future<$2.Empty> rollbackTransaction(
      $grpc.ServiceCall call, $3.ScopeAccessTokenRequest request);
  $async.Future<$4.ReadResponse> read(
      $grpc.ServiceCall call, $4.ReadRequest request);
  $async.Future<$2.Empty> write(
      $grpc.ServiceCall call, $4.WriteRequest request);
  $async.Future<$4.ListResponse> list(
      $grpc.ServiceCall call, $4.ListRequest request);
  $async.Future<$2.Empty> delete(
      $grpc.ServiceCall call, $4.DeleteRequest request);
  $async.Stream<$4.BoxUpdate> getBoxUpdateStream(
      $grpc.ServiceCall call, $3.ScopeAccessTokenRequest request);
}
