///
//  Generated code. Do not modify.
//  source: vault/services/account_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use beginAuthenticationRequestDescriptor instead')
const BeginAuthenticationRequest$json = const {
  '1': 'BeginAuthenticationRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `BeginAuthenticationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginAuthenticationRequestDescriptor = $convert.base64Decode('ChpCZWdpbkF1dGhlbnRpY2F0aW9uUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');
@$core.Deprecated('Use beginAuthenticationResponseDescriptor instead')
const BeginAuthenticationResponse$json = const {
  '1': 'BeginAuthenticationResponse',
  '2': const [
    const {'1': 'authentication_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AuthenticationToken', '10': 'authenticationToken'},
  ],
};

/// Descriptor for `BeginAuthenticationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginAuthenticationResponseDescriptor = $convert.base64Decode('ChtCZWdpbkF1dGhlbnRpY2F0aW9uUmVzcG9uc2USUwoUYXV0aGVudGljYXRpb25fdG9rZW4YASABKAsyIC5wYW5zeS52YXVsdC5BdXRoZW50aWNhdGlvblRva2VuUhNhdXRoZW50aWNhdGlvblRva2Vu');
@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = const {
  '1': 'AuthenticateRequest',
  '2': const [
    const {'1': 'authentication_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AuthenticationToken', '10': 'authenticationToken'},
    const {'1': 'confirmation_code', '3': 2, '4': 1, '5': 9, '10': 'confirmationCode'},
  ],
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode('ChNBdXRoZW50aWNhdGVSZXF1ZXN0ElMKFGF1dGhlbnRpY2F0aW9uX3Rva2VuGAEgASgLMiAucGFuc3kudmF1bHQuQXV0aGVudGljYXRpb25Ub2tlblITYXV0aGVudGljYXRpb25Ub2tlbhIrChFjb25maXJtYXRpb25fY29kZRgCIAEoCVIQY29uZmlybWF0aW9uQ29kZQ==');
@$core.Deprecated('Use authenticateResponseDescriptor instead')
const AuthenticateResponse$json = const {
  '1': 'AuthenticateResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 12, '10': 'refreshToken'},
  ],
};

/// Descriptor for `AuthenticateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateResponseDescriptor = $convert.base64Decode('ChRBdXRoZW50aWNhdGVSZXNwb25zZRJCCgxhY2Nlc3NfdG9rZW4YASABKAsyHy5wYW5zeS52YXVsdC5BY2NvdW50QWNjZXNzVG9rZW5SC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAxSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use getIndexDataResponseDescriptor instead')
const GetIndexDataResponse$json = const {
  '1': 'GetIndexDataResponse',
  '2': const [
    const {'1': 'index_data', '3': 1, '4': 1, '5': 12, '10': 'indexData'},
    const {'1': 'concurrency_stamp', '3': 2, '4': 1, '5': 12, '10': 'concurrencyStamp'},
  ],
};

/// Descriptor for `GetIndexDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getIndexDataResponseDescriptor = $convert.base64Decode('ChRHZXRJbmRleERhdGFSZXNwb25zZRIdCgppbmRleF9kYXRhGAEgASgMUglpbmRleERhdGESKwoRY29uY3VycmVuY3lfc3RhbXAYAiABKAxSEGNvbmN1cnJlbmN5U3RhbXA=');
@$core.Deprecated('Use setIndexDataRequestDescriptor instead')
const SetIndexDataRequest$json = const {
  '1': 'SetIndexDataRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
    const {'1': 'index_data', '3': 2, '4': 1, '5': 12, '10': 'indexData'},
    const {'1': 'concurrency_stamp', '3': 3, '4': 1, '5': 12, '10': 'concurrencyStamp'},
  ],
};

/// Descriptor for `SetIndexDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setIndexDataRequestDescriptor = $convert.base64Decode('ChNTZXRJbmRleERhdGFSZXF1ZXN0EkIKDGFjY2Vzc190b2tlbhgBIAEoCzIfLnBhbnN5LnZhdWx0LkFjY291bnRBY2Nlc3NUb2tlblILYWNjZXNzVG9rZW4SHQoKaW5kZXhfZGF0YRgCIAEoDFIJaW5kZXhEYXRhEisKEWNvbmN1cnJlbmN5X3N0YW1wGAMgASgMUhBjb25jdXJyZW5jeVN0YW1w');
