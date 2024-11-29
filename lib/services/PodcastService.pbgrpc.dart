//
//  Generated code. Do not modify.
//  source: PodcastService.proto
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
import 'PodcastMessages.pb.dart' as $1;

export 'PodcastService.pb.dart';

@$pb.GrpcServiceName('generated.PodcastService')
class PodcastServiceClient extends $grpc.Client {
  static final _$getPodcastList = $grpc.ClientMethod<$1.ListPodcastsRequest, $1.Podcast>(
      '/generated.PodcastService/GetPodcastList',
      ($1.ListPodcastsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Podcast.fromBuffer(value));
  static final _$getPodcastEpisodeList = $grpc.ClientMethod<$1.ListEpisodesRequest, $1.PodcastEpisode>(
      '/generated.PodcastService/GetPodcastEpisodeList',
      ($1.ListEpisodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PodcastEpisode.fromBuffer(value));
  static final _$streamPodcast = $grpc.ClientMethod<$1.StreamPodcastRequest, $1.ByteData>(
      '/generated.PodcastService/StreamPodcast',
      ($1.StreamPodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ByteData.fromBuffer(value));
  static final _$newPodcast = $grpc.ClientMethod<$1.CreatePodcastRequest, $1.Podcast>(
      '/generated.PodcastService/NewPodcast',
      ($1.CreatePodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Podcast.fromBuffer(value));
  static final _$newEpisode = $grpc.ClientMethod<$1.CreateEpisodeRequest, $1.PodcastEpisode>(
      '/generated.PodcastService/NewEpisode',
      ($1.CreateEpisodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PodcastEpisode.fromBuffer(value));
  static final _$editPodcast = $grpc.ClientMethod<$1.Podcast, $1.Podcast>(
      '/generated.PodcastService/EditPodcast',
      ($1.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Podcast.fromBuffer(value));
  static final _$deletePodcast = $grpc.ClientMethod<$1.Podcast, $3.Empty>(
      '/generated.PodcastService/DeletePodcast',
      ($1.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Empty.fromBuffer(value));
  static final _$healthCheck = $grpc.ClientMethod<$3.Empty, $1.PodcastServiceHealthResponse>(
      '/generated.PodcastService/HealthCheck',
      ($3.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PodcastServiceHealthResponse.fromBuffer(value));

  PodcastServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$1.Podcast> getPodcastList($1.ListPodcastsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getPodcastList, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$1.PodcastEpisode> getPodcastEpisodeList($1.ListEpisodesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getPodcastEpisodeList, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$1.ByteData> streamPodcast($1.StreamPodcastRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamPodcast, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.Podcast> newPodcast($1.CreatePodcastRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$1.PodcastEpisode> newEpisode($1.CreateEpisodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newEpisode, request, options: options);
  }

  $grpc.ResponseFuture<$1.Podcast> editPodcast($1.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$3.Empty> deletePodcast($1.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePodcast, request, options: options);
  }

  $grpc.ResponseFuture<$1.PodcastServiceHealthResponse> healthCheck($3.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$healthCheck, request, options: options);
  }
}

@$pb.GrpcServiceName('generated.PodcastService')
abstract class PodcastServiceBase extends $grpc.Service {
  $core.String get $name => 'generated.PodcastService';

  PodcastServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListPodcastsRequest, $1.Podcast>(
        'GetPodcastList',
        getPodcastList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.ListPodcastsRequest.fromBuffer(value),
        ($1.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListEpisodesRequest, $1.PodcastEpisode>(
        'GetPodcastEpisodeList',
        getPodcastEpisodeList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.ListEpisodesRequest.fromBuffer(value),
        ($1.PodcastEpisode value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StreamPodcastRequest, $1.ByteData>(
        'StreamPodcast',
        streamPodcast_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.StreamPodcastRequest.fromBuffer(value),
        ($1.ByteData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreatePodcastRequest, $1.Podcast>(
        'NewPodcast',
        newPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreatePodcastRequest.fromBuffer(value),
        ($1.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateEpisodeRequest, $1.PodcastEpisode>(
        'NewEpisode',
        newEpisode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateEpisodeRequest.fromBuffer(value),
        ($1.PodcastEpisode value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Podcast, $1.Podcast>(
        'EditPodcast',
        editPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Podcast.fromBuffer(value),
        ($1.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Podcast, $3.Empty>(
        'DeletePodcast',
        deletePodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Podcast.fromBuffer(value),
        ($3.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Empty, $1.PodcastServiceHealthResponse>(
        'HealthCheck',
        healthCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Empty.fromBuffer(value),
        ($1.PodcastServiceHealthResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$1.Podcast> getPodcastList_Pre($grpc.ServiceCall call, $async.Future<$1.ListPodcastsRequest> request) async* {
    yield* getPodcastList(call, await request);
  }

  $async.Stream<$1.PodcastEpisode> getPodcastEpisodeList_Pre($grpc.ServiceCall call, $async.Future<$1.ListEpisodesRequest> request) async* {
    yield* getPodcastEpisodeList(call, await request);
  }

  $async.Stream<$1.ByteData> streamPodcast_Pre($grpc.ServiceCall call, $async.Future<$1.StreamPodcastRequest> request) async* {
    yield* streamPodcast(call, await request);
  }

  $async.Future<$1.Podcast> newPodcast_Pre($grpc.ServiceCall call, $async.Future<$1.CreatePodcastRequest> request) async {
    return newPodcast(call, await request);
  }

  $async.Future<$1.PodcastEpisode> newEpisode_Pre($grpc.ServiceCall call, $async.Future<$1.CreateEpisodeRequest> request) async {
    return newEpisode(call, await request);
  }

  $async.Future<$1.Podcast> editPodcast_Pre($grpc.ServiceCall call, $async.Future<$1.Podcast> request) async {
    return editPodcast(call, await request);
  }

  $async.Future<$3.Empty> deletePodcast_Pre($grpc.ServiceCall call, $async.Future<$1.Podcast> request) async {
    return deletePodcast(call, await request);
  }

  $async.Future<$1.PodcastServiceHealthResponse> healthCheck_Pre($grpc.ServiceCall call, $async.Future<$3.Empty> request) async {
    return healthCheck(call, await request);
  }

  $async.Stream<$1.Podcast> getPodcastList($grpc.ServiceCall call, $1.ListPodcastsRequest request);
  $async.Stream<$1.PodcastEpisode> getPodcastEpisodeList($grpc.ServiceCall call, $1.ListEpisodesRequest request);
  $async.Stream<$1.ByteData> streamPodcast($grpc.ServiceCall call, $1.StreamPodcastRequest request);
  $async.Future<$1.Podcast> newPodcast($grpc.ServiceCall call, $1.CreatePodcastRequest request);
  $async.Future<$1.PodcastEpisode> newEpisode($grpc.ServiceCall call, $1.CreateEpisodeRequest request);
  $async.Future<$1.Podcast> editPodcast($grpc.ServiceCall call, $1.Podcast request);
  $async.Future<$3.Empty> deletePodcast($grpc.ServiceCall call, $1.Podcast request);
  $async.Future<$1.PodcastServiceHealthResponse> healthCheck($grpc.ServiceCall call, $3.Empty request);
}
