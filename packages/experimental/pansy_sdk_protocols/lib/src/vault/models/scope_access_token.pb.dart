///
//  Generated code. Do not modify.
//  source: vault/models/scope_access_token.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $8;

class ScopeAccessToken_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeAccessToken.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scopeId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'canWrite')
    ..aOM<$8.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiresAt', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ScopeAccessToken_Payload._() : super();
  factory ScopeAccessToken_Payload({
    $core.String? sessionId,
    $core.String? scopeId,
    $core.bool? canWrite,
    $8.Timestamp? expiresAt,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (scopeId != null) {
      _result.scopeId = scopeId;
    }
    if (canWrite != null) {
      _result.canWrite = canWrite;
    }
    if (expiresAt != null) {
      _result.expiresAt = expiresAt;
    }
    return _result;
  }
  factory ScopeAccessToken_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeAccessToken_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeAccessToken_Payload clone() => ScopeAccessToken_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeAccessToken_Payload copyWith(void Function(ScopeAccessToken_Payload) updates) => super.copyWith((message) => updates(message as ScopeAccessToken_Payload)) as ScopeAccessToken_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeAccessToken_Payload create() => ScopeAccessToken_Payload._();
  ScopeAccessToken_Payload createEmptyInstance() => create();
  static $pb.PbList<ScopeAccessToken_Payload> createRepeated() => $pb.PbList<ScopeAccessToken_Payload>();
  @$core.pragma('dart2js:noInline')
  static ScopeAccessToken_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeAccessToken_Payload>(create);
  static ScopeAccessToken_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

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

  @$pb.TagNumber(4)
  $8.Timestamp get expiresAt => $_getN(3);
  @$pb.TagNumber(4)
  set expiresAt($8.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiresAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiresAt() => clearField(4);
  @$pb.TagNumber(4)
  $8.Timestamp ensureExpiresAt() => $_ensure(3);
}

class ScopeAccessToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeAccessToken', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<ScopeAccessToken_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: ScopeAccessToken_Payload.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ScopeAccessToken._() : super();
  factory ScopeAccessToken({
    ScopeAccessToken_Payload? payload,
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
  factory ScopeAccessToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeAccessToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeAccessToken clone() => ScopeAccessToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeAccessToken copyWith(void Function(ScopeAccessToken) updates) => super.copyWith((message) => updates(message as ScopeAccessToken)) as ScopeAccessToken; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeAccessToken create() => ScopeAccessToken._();
  ScopeAccessToken createEmptyInstance() => create();
  static $pb.PbList<ScopeAccessToken> createRepeated() => $pb.PbList<ScopeAccessToken>();
  @$core.pragma('dart2js:noInline')
  static ScopeAccessToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeAccessToken>(create);
  static ScopeAccessToken? _defaultInstance;

  @$pb.TagNumber(1)
  ScopeAccessToken_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(ScopeAccessToken_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  ScopeAccessToken_Payload ensurePayload() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

