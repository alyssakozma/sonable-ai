//
//  Generated code. Do not modify.
//  source: schema.proto
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

import 'schema.pb.dart' as $0;

export 'schema.pb.dart';

@$pb.GrpcServiceName('PodcastService')
class PodcastServiceClient extends $grpc.Client {
  static final _$getPodcastList = $grpc.ClientMethod<$0.User, $0.PodcastList>(
      '/PodcastService/GetPodcastList',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PodcastList.fromBuffer(value));
  static final _$getPodcastEpisodeList = $grpc.ClientMethod<$0.Podcast, $0.PodcastEpisodeList>(
      '/PodcastService/GetPodcastEpisodeList',
      ($0.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PodcastEpisodeList.fromBuffer(value));
  static final _$streamPodcast = $grpc.ClientMethod<$0.StreamPodcastRequest, $0.PodcastAudio>(
      '/PodcastService/StreamPodcast',
      ($0.StreamPodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PodcastAudio.fromBuffer(value));
  static final _$sendPodcast = $grpc.ClientMethod<$0.StreamPodcastRequest, $0.PodcastAudio>(
      '/PodcastService/SendPodcast',
      ($0.StreamPodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PodcastAudio.fromBuffer(value));
  static final _$newPodcast = $grpc.ClientMethod<$0.Podcast, $0.Podcast>(
      '/PodcastService/NewPodcast',
      ($0.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value));
  static final _$editPodcast = $grpc.ClientMethod<$0.Podcast, $0.Podcast>(
      '/PodcastService/EditPodcast',
      ($0.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value));
  static final _$deletePodcast = $grpc.ClientMethod<$0.Podcast, $0.Empty>(
      '/PodcastService/DeletePodcast',
      ($0.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PodcastServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.PodcastList> getPodcastList($0.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPodcastList, request, options: options);
  }

  $grpc.ResponseFuture<$0.PodcastEpisodeList> getPodcastEpisodeList($0.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPodcastEpisodeList, request, options: options);
  }

  $grpc.ResponseStream<$0.PodcastAudio> streamPodcast($0.StreamPodcastRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamPodcast, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.PodcastAudio> sendPodcast($0.StreamPodcastRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Podcast> newPodcast($0.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Podcast> editPodcast($0.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deletePodcast($0.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePodcast, request, options: options);
  }
}

@$pb.GrpcServiceName('PodcastService')
abstract class PodcastServiceBase extends $grpc.Service {
  $core.String get $name => 'PodcastService';

  PodcastServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.PodcastList>(
        'GetPodcastList',
        getPodcastList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.PodcastList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Podcast, $0.PodcastEpisodeList>(
        'GetPodcastEpisodeList',
        getPodcastEpisodeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value),
        ($0.PodcastEpisodeList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamPodcastRequest, $0.PodcastAudio>(
        'StreamPodcast',
        streamPodcast_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamPodcastRequest.fromBuffer(value),
        ($0.PodcastAudio value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamPodcastRequest, $0.PodcastAudio>(
        'SendPodcast',
        sendPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StreamPodcastRequest.fromBuffer(value),
        ($0.PodcastAudio value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Podcast, $0.Podcast>(
        'NewPodcast',
        newPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value),
        ($0.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Podcast, $0.Podcast>(
        'EditPodcast',
        editPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value),
        ($0.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Podcast, $0.Empty>(
        'DeletePodcast',
        deletePodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Podcast.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.PodcastList> getPodcastList_Pre($grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return getPodcastList(call, await request);
  }

  $async.Future<$0.PodcastEpisodeList> getPodcastEpisodeList_Pre($grpc.ServiceCall call, $async.Future<$0.Podcast> request) async {
    return getPodcastEpisodeList(call, await request);
  }

  $async.Stream<$0.PodcastAudio> streamPodcast_Pre($grpc.ServiceCall call, $async.Future<$0.StreamPodcastRequest> request) async* {
    yield* streamPodcast(call, await request);
  }

  $async.Future<$0.PodcastAudio> sendPodcast_Pre($grpc.ServiceCall call, $async.Future<$0.StreamPodcastRequest> request) async {
    return sendPodcast(call, await request);
  }

  $async.Future<$0.Podcast> newPodcast_Pre($grpc.ServiceCall call, $async.Future<$0.Podcast> request) async {
    return newPodcast(call, await request);
  }

  $async.Future<$0.Podcast> editPodcast_Pre($grpc.ServiceCall call, $async.Future<$0.Podcast> request) async {
    return editPodcast(call, await request);
  }

  $async.Future<$0.Empty> deletePodcast_Pre($grpc.ServiceCall call, $async.Future<$0.Podcast> request) async {
    return deletePodcast(call, await request);
  }

  $async.Future<$0.PodcastList> getPodcastList($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.PodcastEpisodeList> getPodcastEpisodeList($grpc.ServiceCall call, $0.Podcast request);
  $async.Stream<$0.PodcastAudio> streamPodcast($grpc.ServiceCall call, $0.StreamPodcastRequest request);
  $async.Future<$0.PodcastAudio> sendPodcast($grpc.ServiceCall call, $0.StreamPodcastRequest request);
  $async.Future<$0.Podcast> newPodcast($grpc.ServiceCall call, $0.Podcast request);
  $async.Future<$0.Podcast> editPodcast($grpc.ServiceCall call, $0.Podcast request);
  $async.Future<$0.Empty> deletePodcast($grpc.ServiceCall call, $0.Podcast request);
}
@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$registerUser = $grpc.ClientMethod<$0.User, $0.User>(
      '/UserService/RegisterUser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$loginUser = $grpc.ClientMethod<$0.LoginRequest, $0.User>(
      '/UserService/LoginUser',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$logoutUser = $grpc.ClientMethod<$0.LogoutRequest, $0.Empty>(
      '/UserService/LogoutUser',
      ($0.LogoutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.User> registerUser($0.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> loginUser($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> logoutUser($0.LogoutRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logoutUser, request, options: options);
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.User>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogoutRequest, $0.Empty>(
        'LogoutUser',
        logoutUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogoutRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.User> registerUser_Pre($grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return registerUser(call, await request);
  }

  $async.Future<$0.User> loginUser_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return loginUser(call, await request);
  }

  $async.Future<$0.Empty> logoutUser_Pre($grpc.ServiceCall call, $async.Future<$0.LogoutRequest> request) async {
    return logoutUser(call, await request);
  }

  $async.Future<$0.User> registerUser($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.User> loginUser($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.Empty> logoutUser($grpc.ServiceCall call, $0.LogoutRequest request);
}
