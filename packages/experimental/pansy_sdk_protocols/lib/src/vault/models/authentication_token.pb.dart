///
//  Generated code. Do not modify.
//  source: vault/models/authentication_token.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $8;

class AuthenticationToken_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationToken.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId', protoName: 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmationCodeSalt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmationCodeHash', $pb.PbFieldType.OY)
    ..aOM<$8.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AuthenticationToken_Payload._() : super();
  factory AuthenticationToken_Payload({
    $core.String? requestId,
    $core.String? target,
    $core.List<$core.int>? confirmationCodeSalt,
    $core.List<$core.int>? confirmationCodeHash,
    $8.Timestamp? expiresAt,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (target != null) {
      _result.target = target;
    }
    if (confirmationCodeSalt != null) {
      _result.confirmationCodeSalt = confirmationCodeSalt;
    }
    if (confirmationCodeHash != null) {
      _result.confirmationCodeHash = confirmationCodeHash;
    }
    if (expiresAt != null) {
      _result.expiresAt = expiresAt;
    }
    return _result;
  }
  factory AuthenticationToken_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationToken_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationToken_Payload clone() => AuthenticationToken_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationToken_Payload copyWith(void Function(AuthenticationToken_Payload) updates) => super.copyWith((message) => updates(message as AuthenticationToken_Payload)) as AuthenticationToken_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationToken_Payload create() => AuthenticationToken_Payload._();
  AuthenticationToken_Payload createEmptyInstance() => create();
  static $pb.PbList<AuthenticationToken_Payload> createRepeated() => $pb.PbList<AuthenticationToken_Payload>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationToken_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationToken_Payload>(create);
  static AuthenticationToken_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get target => $_getSZ(1);
  @$pb.TagNumber(2)
  set target($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get confirmationCodeSalt => $_getN(2);
  @$pb.TagNumber(3)
  set confirmationCodeSalt($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfirmationCodeSalt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmationCodeSalt() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get confirmationCodeHash => $_getN(3);
  @$pb.TagNumber(4)
  set confirmationCodeHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConfirmationCodeHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfirmationCodeHash() => clearField(4);

  @$pb.TagNumber(5)
  $8.Timestamp get expiresAt => $_getN(4);
  @$pb.TagNumber(5)
  set expiresAt($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiresAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiresAt() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureExpiresAt() => $_ensure(4);
}

class AuthenticationToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticationToken', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<AuthenticationToken_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: AuthenticationToken_Payload.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AuthenticationToken._() : super();
  factory AuthenticationToken({
    AuthenticationToken_Payload? payload,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory AuthenticationToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticationToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticationToken clone() => AuthenticationToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticationToken copyWith(void Function(AuthenticationToken) updates) => super.copyWith((message) => updates(message as AuthenticationToken)) as AuthenticationToken; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticationToken create() => AuthenticationToken._();
  AuthenticationToken createEmptyInstance() => create();
  static $pb.PbList<AuthenticationToken> createRepeated() => $pb.PbList<AuthenticationToken>();
  @$core.pragma('dart2js:noInline')
  static AuthenticationToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticationToken>(create);
  static AuthenticationToken? _defaultInstance;

  @$pb.TagNumber(1)
  AuthenticationToken_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(AuthenticationToken_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  AuthenticationToken_Payload ensurePayload() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

