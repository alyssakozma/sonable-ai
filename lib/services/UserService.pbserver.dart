//
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Base.pb.dart' as $0;
import 'UserMessages.pb.dart' as $4;
import 'UserService.pbjson.dart';

export 'UserService.pb.dart';

abstract class UserServiceBase extends $pb.GeneratedService {
  $async.Future<$4.User> registerUser($pb.ServerContext ctx, $4.User request);
  $async.Future<$4.User> loginUser($pb.ServerContext ctx, $4.LoginRequest request);
  $async.Future<$0.Empty> logoutUser($pb.ServerContext ctx, $4.LogoutRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'RegisterUser': return $4.User();
      case 'LoginUser': return $4.LoginRequest();
      case 'LogoutUser': return $4.LogoutRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'RegisterUser': return this.registerUser(ctx, request as $4.User);
      case 'LoginUser': return this.loginUser(ctx, request as $4.LoginRequest);
      case 'LogoutUser': return this.logoutUser(ctx, request as $4.LogoutRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UserServiceBase$messageJson;
}

