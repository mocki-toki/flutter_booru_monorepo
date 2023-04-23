///
//  Generated code. Do not modify.
//  source: vault/services/session_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../models/account_access_token.pb.dart' as $9;
import '../models/scope_access_token.pb.dart' as $10;

class RefreshSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RefreshSessionRequest._() : super();
  factory RefreshSessionRequest({
    $core.String? sessionId,
    $core.List<$core.int>? refreshToken,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    return _result;
  }
  factory RefreshSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshSessionRequest clone() => RefreshSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshSessionRequest copyWith(void Function(RefreshSessionRequest) updates) => super.copyWith((message) => updates(message as RefreshSessionRequest)) as RefreshSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshSessionRequest create() => RefreshSessionRequest._();
  RefreshSessionRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshSessionRequest> createRepeated() => $pb.PbList<RefreshSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshSessionRequest>(create);
  static RefreshSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get refreshToken => $_getN(1);
  @$pb.TagNumber(2)
  set refreshToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

class RefreshAccountSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshAccountSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RefreshAccountSessionResponse._() : super();
  factory RefreshAccountSessionResponse({
    $9.AccountAccessToken? accessToken,
    $core.List<$core.int>? refreshToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    return _result;
  }
  factory RefreshAccountSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshAccountSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshAccountSessionResponse clone() => RefreshAccountSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshAccountSessionResponse copyWith(void Function(RefreshAccountSessionResponse) updates) => super.copyWith((message) => updates(message as RefreshAccountSessionResponse)) as RefreshAccountSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshAccountSessionResponse create() => RefreshAccountSessionResponse._();
  RefreshAccountSessionResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshAccountSessionResponse> createRepeated() => $pb.PbList<RefreshAccountSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshAccountSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshAccountSessionResponse>(create);
  static RefreshAccountSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $9.AccountAccessToken get accessToken => $_getN(0);
  @$pb.TagNumber(1)
  set accessToken($9.AccountAccessToken v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
  @$pb.TagNumber(1)
  $9.AccountAccessToken ensureAccessToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get refreshToken => $_getN(1);
  @$pb.TagNumber(2)
  set refreshToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

class RefreshScopeSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RefreshScopeSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$10.ScopeAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $10.ScopeAccessToken.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RefreshScopeSessionResponse._() : super();
  factory RefreshScopeSessionResponse({
    $10.ScopeAccessToken? accessToken,
    $core.List<$core.int>? refreshToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    return _result;
  }
  factory RefreshScopeSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshScopeSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RefreshScopeSessionResponse clone() => RefreshScopeSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RefreshScopeSessionResponse copyWith(void Function(RefreshScopeSessionResponse) updates) => super.copyWith((message) => updates(message as RefreshScopeSessionResponse)) as RefreshScopeSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshScopeSessionResponse create() => RefreshScopeSessionResponse._();
  RefreshScopeSessionResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshScopeSessionResponse> createRepeated() => $pb.PbList<RefreshScopeSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshScopeSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshScopeSessionResponse>(create);
  static RefreshScopeSessionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $10.ScopeAccessToken get accessToken => $_getN(0);
  @$pb.TagNumber(1)
  set accessToken($10.ScopeAccessToken v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
  @$pb.TagNumber(1)
  $10.ScopeAccessToken ensureAccessToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get refreshToken => $_getN(1);
  @$pb.TagNumber(2)
  set refreshToken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

