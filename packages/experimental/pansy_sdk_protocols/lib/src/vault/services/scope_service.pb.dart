///
//  Generated code. Do not modify.
//  source: vault/services/scope_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../models/account_access_token.pb.dart' as $9;

class CreateScopeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateScopeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeId')
    ..hasRequiredFields = false
  ;

  CreateScopeResponse._() : super();
  factory CreateScopeResponse({
    $core.String? scopeId,
  }) {
    final _result = create();
    if (scopeId != null) {
      _result.scopeId = scopeId;
    }
    return _result;
  }
  factory CreateScopeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateScopeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateScopeResponse clone() => CreateScopeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateScopeResponse copyWith(void Function(CreateScopeResponse) updates) => super.copyWith((message) => updates(message as CreateScopeResponse)) as CreateScopeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateScopeResponse create() => CreateScopeResponse._();
  CreateScopeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateScopeResponse> createRepeated() => $pb.PbList<CreateScopeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateScopeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateScopeResponse>(create);
  static CreateScopeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scopeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set scopeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScopeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScopeId() => clearField(1);
}

class CreateScopeSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateScopeSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canWrite')
    ..hasRequiredFields = false
  ;

  CreateScopeSessionRequest._() : super();
  factory CreateScopeSessionRequest({
    $9.AccountAccessToken? accessToken,
    $core.String? scopeId,
    $core.bool? canWrite,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (scopeId != null) {
      _result.scopeId = scopeId;
    }
    if (canWrite != null) {
      _result.canWrite = canWrite;
    }
    return _result;
  }
  factory CreateScopeSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateScopeSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateScopeSessionRequest clone() => CreateScopeSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateScopeSessionRequest copyWith(void Function(CreateScopeSessionRequest) updates) => super.copyWith((message) => updates(message as CreateScopeSessionRequest)) as CreateScopeSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateScopeSessionRequest create() => CreateScopeSessionRequest._();
  CreateScopeSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateScopeSessionRequest> createRepeated() => $pb.PbList<CreateScopeSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateScopeSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateScopeSessionRequest>(create);
  static CreateScopeSessionRequest? _defaultInstance;

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
  $core.String get scopeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set scopeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScopeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearScopeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get canWrite => $_getBF(2);
  @$pb.TagNumber(3)
  set canWrite($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCanWrite() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanWrite() => clearField(3);
}

class CreateScopeSessionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateScopeSessionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CreateScopeSessionResponse._() : super();
  factory CreateScopeSessionResponse({
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
  factory CreateScopeSessionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateScopeSessionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateScopeSessionResponse clone() => CreateScopeSessionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateScopeSessionResponse copyWith(void Function(CreateScopeSessionResponse) updates) => super.copyWith((message) => updates(message as CreateScopeSessionResponse)) as CreateScopeSessionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateScopeSessionResponse create() => CreateScopeSessionResponse._();
  CreateScopeSessionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateScopeSessionResponse> createRepeated() => $pb.PbList<CreateScopeSessionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateScopeSessionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateScopeSessionResponse>(create);
  static CreateScopeSessionResponse? _defaultInstance;

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

