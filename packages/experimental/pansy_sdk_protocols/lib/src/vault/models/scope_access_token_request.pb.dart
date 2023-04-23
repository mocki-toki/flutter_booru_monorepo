///
//  Generated code. Do not modify.
//  source: vault/models/scope_access_token_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'scope_access_token.pb.dart' as $10;

class ScopeAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScopeAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$10.ScopeAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $10.ScopeAccessToken.create)
    ..hasRequiredFields = false
  ;

  ScopeAccessTokenRequest._() : super();
  factory ScopeAccessTokenRequest({
    $10.ScopeAccessToken? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory ScopeAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScopeAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScopeAccessTokenRequest clone() => ScopeAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScopeAccessTokenRequest copyWith(void Function(ScopeAccessTokenRequest) updates) => super.copyWith((message) => updates(message as ScopeAccessTokenRequest)) as ScopeAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScopeAccessTokenRequest create() => ScopeAccessTokenRequest._();
  ScopeAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<ScopeAccessTokenRequest> createRepeated() => $pb.PbList<ScopeAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static ScopeAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScopeAccessTokenRequest>(create);
  static ScopeAccessTokenRequest? _defaultInstance;

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
}

