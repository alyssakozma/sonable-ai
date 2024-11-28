//
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Base.pb.dart' as $0;
import 'UserMessages.pb.dart' as $4;

class UserServiceApi {
  $pb.RpcClient _client;
  UserServiceApi(this._client);

  $async.Future<$4.User> registerUser($pb.ClientContext? ctx, $4.User request) =>
    _client.invoke<$4.User>(ctx, 'UserService', 'RegisterUser', request, $4.User())
  ;
  $async.Future<$4.User> loginUser($pb.ClientContext? ctx, $4.LoginRequest request) =>
    _client.invoke<$4.User>(ctx, 'UserService', 'LoginUser', request, $4.User())
  ;
  $async.Future<$0.Empty> logoutUser($pb.ClientContext? ctx, $4.LogoutRequest request) =>
    _client.invoke<$0.Empty>(ctx, 'UserService', 'LogoutUser', request, $0.Empty())
  ;
}

