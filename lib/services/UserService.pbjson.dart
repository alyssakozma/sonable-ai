//
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'Base.pbjson.dart' as $0;
import 'UserMessages.pbjson.dart' as $4;

const $core.Map<$core.String, $core.dynamic> UserServiceBase$json = {
  '1': 'UserService',
  '2': [
    {'1': 'RegisterUser', '2': '.generated.User', '3': '.generated.User', '4': {}},
    {'1': 'LoginUser', '2': '.generated.LoginRequest', '3': '.generated.User', '4': {}},
    {'1': 'LogoutUser', '2': '.generated.LogoutRequest', '3': '.generated.Empty', '4': {}},
  ],
};

@$core.Deprecated('Use userServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UserServiceBase$messageJson = {
  '.generated.User': $4.User$json,
  '.generated.LoginRequest': $4.LoginRequest$json,
  '.generated.LogoutRequest': $4.LogoutRequest$json,
  '.generated.Empty': $0.Empty$json,
};

/// Descriptor for `UserService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List userServiceDescriptor = $convert.base64Decode(
    'CgtVc2VyU2VydmljZRJPCgxSZWdpc3RlclVzZXISDy5nZW5lcmF0ZWQuVXNlchoPLmdlbmVyYX'
    'RlZC5Vc2VyIh2C0+STAhc6ASoiEi92MS91c2Vycy9yZWdpc3RlchJRCglMb2dpblVzZXISFy5n'
    'ZW5lcmF0ZWQuTG9naW5SZXF1ZXN0Gg8uZ2VuZXJhdGVkLlVzZXIiGoLT5JMCFDoBKiIPL3YxL3'
    'VzZXJzL2xvZ2luElUKCkxvZ291dFVzZXISGC5nZW5lcmF0ZWQuTG9nb3V0UmVxdWVzdBoQLmdl'
    'bmVyYXRlZC5FbXB0eSIbgtPkkwIVOgEqIhAvdjEvdXNlcnMvbG9nb3V0');

