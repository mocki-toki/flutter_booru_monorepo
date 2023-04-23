///
//  Generated code. Do not modify.
//  source: vault/services/account_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../models/authentication_token.pb.dart' as $11;
import '../models/account_access_token.pb.dart' as $9;

class BeginAuthenticationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeginAuthenticationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  BeginAuthenticationRequest._() : super();
  factory BeginAuthenticationRequest({
    $core.String? email,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory BeginAuthenticationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeginAuthenticationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeginAuthenticationRequest clone() => BeginAuthenticationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeginAuthenticationRequest copyWith(void Function(BeginAuthenticationRequest) updates) => super.copyWith((message) => updates(message as BeginAuthenticationRequest)) as BeginAuthenticationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeginAuthenticationRequest create() => BeginAuthenticationRequest._();
  BeginAuthenticationRequest createEmptyInstance() => create();
  static $pb.PbList<BeginAuthenticationRequest> createRepeated() => $pb.PbList<BeginAuthenticationRequest>();
  @$core.pragma('dart2js:noInline')
  static BeginAuthenticationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeginAuthenticationRequest>(create);
  static BeginAuthenticationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class BeginAuthenticationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeginAuthenticationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$11.AuthenticationToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authenticationToken', subBuilder: $11.AuthenticationToken.create)
    ..hasRequiredFields = false
  ;

  BeginAuthenticationResponse._() : super();
  factory BeginAuthenticationResponse({
    $11.AuthenticationToken? authenticationToken,
  }) {
    final _result = create();
    if (authenticationToken != null) {
      _result.authenticationToken = authenticationToken;
    }
    return _result;
  }
  factory BeginAuthenticationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeginAuthenticationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeginAuthenticationResponse clone() => BeginAuthenticationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeginAuthenticationResponse copyWith(void Function(BeginAuthenticationResponse) updates) => super.copyWith((message) => updates(message as BeginAuthenticationResponse)) as BeginAuthenticationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeginAuthenticationResponse create() => BeginAuthenticationResponse._();
  BeginAuthenticationResponse createEmptyInstance() => create();
  static $pb.PbList<BeginAuthenticationResponse> createRepeated() => $pb.PbList<BeginAuthenticationResponse>();
  @$core.pragma('dart2js:noInline')
  static BeginAuthenticationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeginAuthenticationResponse>(create);
  static BeginAuthenticationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $11.AuthenticationToken get authenticationToken => $_getN(0);
  @$pb.TagNumber(1)
  set authenticationToken($11.AuthenticationToken v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthenticationToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthenticationToken() => clearField(1);
  @$pb.TagNumber(1)
  $11.AuthenticationToken ensureAuthenticationToken() => $_ensure(0);
}

class AuthenticateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$11.AuthenticationToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authenticationToken', subBuilder: $11.AuthenticationToken.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmationCode')
    ..hasRequiredFields = false
  ;

  AuthenticateRequest._() : super();
  factory AuthenticateRequest({
    $11.AuthenticationToken? authenticationToken,
    $core.String? confirmationCode,
  }) {
    final _result = create();
    if (authenticationToken != null) {
      _result.authenticationToken = authenticationToken;
    }
    if (confirmationCode != null) {
      _result.confirmationCode = confirmationCode;
    }
    return _result;
  }
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) => super.copyWith((message) => updates(message as AuthenticateRequest)) as AuthenticateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest create() => AuthenticateRequest._();
  AuthenticateRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateRequest> createRepeated() => $pb.PbList<AuthenticateRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateRequest>(create);
  static AuthenticateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $11.AuthenticationToken get authenticationToken => $_getN(0);
  @$pb.TagNumber(1)
  set authenticationToken($11.AuthenticationToken v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthenticationToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthenticationToken() => clearField(1);
  @$pb.TagNumber(1)
  $11.AuthenticationToken ensureAuthenticationToken() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get confirmationCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set confirmationCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfirmationCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmationCode() => clearField(2);
}

class AuthenticateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AuthenticateResponse._() : super();
  factory AuthenticateResponse({
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
  factory AuthenticateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateResponse clone() => AuthenticateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateResponse copyWith(void Function(AuthenticateResponse) updates) => super.copyWith((message) => updates(message as AuthenticateResponse)) as AuthenticateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse create() => AuthenticateResponse._();
  AuthenticateResponse createEmptyInstance() => create();
  static $pb.PbList<AuthenticateResponse> createRepeated() => $pb.PbList<AuthenticateResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateResponse>(create);
  static AuthenticateResponse? _defaultInstance;

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

class GetIndexDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetIndexDataResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'concurrencyStamp', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetIndexDataResponse._() : super();
  factory GetIndexDataResponse({
    $core.List<$core.int>? indexData,
    $core.List<$core.int>? concurrencyStamp,
  }) {
    final _result = create();
    if (indexData != null) {
      _result.indexData = indexData;
    }
    if (concurrencyStamp != null) {
      _result.concurrencyStamp = concurrencyStamp;
    }
    return _result;
  }
  factory GetIndexDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetIndexDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetIndexDataResponse clone() => GetIndexDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetIndexDataResponse copyWith(void Function(GetIndexDataResponse) updates) => super.copyWith((message) => updates(message as GetIndexDataResponse)) as GetIndexDataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetIndexDataResponse create() => GetIndexDataResponse._();
  GetIndexDataResponse createEmptyInstance() => create();
  static $pb.PbList<GetIndexDataResponse> createRepeated() => $pb.PbList<GetIndexDataResponse>();
  @$core.pragma('dart2js:noInline')
  static GetIndexDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetIndexDataResponse>(create);
  static GetIndexDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get indexData => $_getN(0);
  @$pb.TagNumber(1)
  set indexData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndexData() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndexData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get concurrencyStamp => $_getN(1);
  @$pb.TagNumber(2)
  set concurrencyStamp($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConcurrencyStamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearConcurrencyStamp() => clearField(2);
}

class SetIndexDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetIndexDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'concurrencyStamp', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SetIndexDataRequest._() : super();
  factory SetIndexDataRequest({
    $9.AccountAccessToken? accessToken,
    $core.List<$core.int>? indexData,
    $core.List<$core.int>? concurrencyStamp,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (indexData != null) {
      _result.indexData = indexData;
    }
    if (concurrencyStamp != null) {
      _result.concurrencyStamp = concurrencyStamp;
    }
    return _result;
  }
  factory SetIndexDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetIndexDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetIndexDataRequest clone() => SetIndexDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetIndexDataRequest copyWith(void Function(SetIndexDataRequest) updates) => super.copyWith((message) => updates(message as SetIndexDataRequest)) as SetIndexDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetIndexDataRequest create() => SetIndexDataRequest._();
  SetIndexDataRequest createEmptyInstance() => create();
  static $pb.PbList<SetIndexDataRequest> createRepeated() => $pb.PbList<SetIndexDataRequest>();
  @$core.pragma('dart2js:noInline')
  static SetIndexDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetIndexDataRequest>(create);
  static SetIndexDataRequest? _defaultInstance;

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
  $core.List<$core.int> get indexData => $_getN(1);
  @$pb.TagNumber(2)
  set indexData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndexData() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndexData() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get concurrencyStamp => $_getN(2);
  @$pb.TagNumber(3)
  set concurrencyStamp($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConcurrencyStamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearConcurrencyStamp() => clearField(3);
}

