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

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Base.pb.dart' as $3;
import 'UserMessages.pb.dart' as $4;

export 'UserService.pb.dart';

@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$registerUser = $grpc.ClientMethod<$4.User, $4.User>(
      '/UserService/RegisterUser',
      ($4.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.User.fromBuffer(value));
  static final _$loginUser = $grpc.ClientMethod<$4.LoginRequest, $4.User>(
      '/UserService/LoginUser',
      ($4.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.User.fromBuffer(value));
  static final _$logoutUser = $grpc.ClientMethod<$4.LogoutRequest, $3.Empty>(
      '/UserService/LogoutUser',
      ($4.LogoutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Empty.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.User> registerUser($4.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$4.User> loginUser($4.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginUser, request, options: options);
  }

  $grpc.ResponseFuture<$3.Empty> logoutUser($4.LogoutRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logoutUser, request, options: options);
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.User, $4.User>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.User.fromBuffer(value),
        ($4.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.LoginRequest, $4.User>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LoginRequest.fromBuffer(value),
        ($4.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.LogoutRequest, $3.Empty>(
        'LogoutUser',
        logoutUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LogoutRequest.fromBuffer(value),
        ($3.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.User> registerUser_Pre($grpc.ServiceCall call, $async.Future<$4.User> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$4.User> loginUser_Pre($grpc.ServiceCall call, $async.Future<$4.LoginRequest> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$3.Empty> logoutUser_Pre($grpc.ServiceCall call, $async.Future<$4.LogoutRequest> request) async {
    return logoutUser(call, await request);
  }

  $async.Future<$4.User> registerUser($grpc.ServiceCall call, $4.User request);
  $async.Future<$4.User> loginUser($grpc.ServiceCall call, $4.LoginRequest request);
  $async.Future<$3.Empty> logoutUser($grpc.ServiceCall call, $4.LogoutRequest request);
}
