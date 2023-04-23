///
//  Generated code. Do not modify.
//  source: vault/services/session_management_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../models/account_access_token.pb.dart' as $9;
import '../models/account_session.pb.dart' as $12;
import '../models/scope_session.pb.dart' as $13;

class GetSessionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..hasRequiredFields = false
  ;

  GetSessionsRequest._() : super();
  factory GetSessionsRequest({
    $9.AccountAccessToken? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory GetSessionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionsRequest clone() => GetSessionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionsRequest copyWith(void Function(GetSessionsRequest) updates) => super.copyWith((message) => updates(message as GetSessionsRequest)) as GetSessionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionsRequest create() => GetSessionsRequest._();
  GetSessionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetSessionsRequest> createRepeated() => $pb.PbList<GetSessionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSessionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionsRequest>(create);
  static GetSessionsRequest? _defaultInstance;

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
}

class GetSessionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSessionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..pc<$12.AccountSession>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSessions', $pb.PbFieldType.PM, subBuilder: $12.AccountSession.create)
    ..pc<$13.ScopeSession>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeSessions', $pb.PbFieldType.PM, subBuilder: $13.ScopeSession.create)
    ..hasRequiredFields = false
  ;

  GetSessionsResponse._() : super();
  factory GetSessionsResponse({
    $core.Iterable<$12.AccountSession>? accountSessions,
    $core.Iterable<$13.ScopeSession>? scopeSessions,
  }) {
    final _result = create();
    if (accountSessions != null) {
      _result.accountSessions.addAll(accountSessions);
    }
    if (scopeSessions != null) {
      _result.scopeSessions.addAll(scopeSessions);
    }
    return _result;
  }
  factory GetSessionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionsResponse clone() => GetSessionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionsResponse copyWith(void Function(GetSessionsResponse) updates) => super.copyWith((message) => updates(message as GetSessionsResponse)) as GetSessionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSessionsResponse create() => GetSessionsResponse._();
  GetSessionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetSessionsResponse> createRepeated() => $pb.PbList<GetSessionsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSessionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionsResponse>(create);
  static GetSessionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$12.AccountSession> get accountSessions => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$13.ScopeSession> get scopeSessions => $_getList(1);
}

class RevokeSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevokeSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..hasRequiredFields = false
  ;

  RevokeSessionRequest._() : super();
  factory RevokeSessionRequest({
    $9.AccountAccessToken? accessToken,
    $core.String? sessionId,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    return _result;
  }
  factory RevokeSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeSessionRequest clone() => RevokeSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeSessionRequest copyWith(void Function(RevokeSessionRequest) updates) => super.copyWith((message) => updates(message as RevokeSessionRequest)) as RevokeSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevokeSessionRequest create() => RevokeSessionRequest._();
  RevokeSessionRequest createEmptyInstance() => create();
  static $pb.PbList<RevokeSessionRequest> createRepeated() => $pb.PbList<RevokeSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static RevokeSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeSessionRequest>(create);
  static RevokeSessionRequest? _defaultInstance;

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
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => clearField(2);
}

