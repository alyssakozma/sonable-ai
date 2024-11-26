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
import 'PodcastMessages.pb.dart' as $2;

export 'PodcastService.pb.dart';

@$pb.GrpcServiceName('PodcastService')
class PodcastServiceClient extends $grpc.Client {
  static final _$getPodcastList = $grpc.ClientMethod<$2.ListPodcastsRequest, $2.Podcast>(
      '/PodcastService/GetPodcastList',
      ($2.ListPodcastsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Podcast.fromBuffer(value));
  static final _$getPodcastEpisodeList = $grpc.ClientMethod<$2.ListEpisodesRequest, $2.PodcastEpisode>(
      '/PodcastService/GetPodcastEpisodeList',
      ($2.ListEpisodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PodcastEpisode.fromBuffer(value));
  static final _$streamPodcast = $grpc.ClientMethod<$2.StreamPodcastRequest, $2.ByteData>(
      '/PodcastService/StreamPodcast',
      ($2.StreamPodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ByteData.fromBuffer(value));
  static final _$newPodcast = $grpc.ClientMethod<$2.CreatePodcastRequest, $2.Podcast>(
      '/PodcastService/NewPodcast',
      ($2.CreatePodcastRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Podcast.fromBuffer(value));
  static final _$newEpisode = $grpc.ClientMethod<$2.CreateEpisodeRequest, $2.PodcastEpisode>(
      '/PodcastService/NewEpisode',
      ($2.CreateEpisodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PodcastEpisode.fromBuffer(value));
  static final _$editPodcast = $grpc.ClientMethod<$2.Podcast, $2.Podcast>(
      '/PodcastService/EditPodcast',
      ($2.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Podcast.fromBuffer(value));
  static final _$deletePodcast = $grpc.ClientMethod<$2.Podcast, $3.Empty>(
      '/PodcastService/DeletePodcast',
      ($2.Podcast value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.Empty.fromBuffer(value));

  PodcastServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$2.Podcast> getPodcastList($2.ListPodcastsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getPodcastList, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$2.PodcastEpisode> getPodcastEpisodeList($2.ListEpisodesRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getPodcastEpisodeList, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$2.ByteData> streamPodcast($2.StreamPodcastRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamPodcast, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$2.Podcast> newPodcast($2.CreatePodcastRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$2.PodcastEpisode> newEpisode($2.CreateEpisodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newEpisode, request, options: options);
  }

  $grpc.ResponseFuture<$2.Podcast> editPodcast($2.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPodcast, request, options: options);
  }

  $grpc.ResponseFuture<$3.Empty> deletePodcast($2.Podcast request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePodcast, request, options: options);
  }
}

@$pb.GrpcServiceName('PodcastService')
abstract class PodcastServiceBase extends $grpc.Service {
  $core.String get $name => 'PodcastService';

  PodcastServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ListPodcastsRequest, $2.Podcast>(
        'GetPodcastList',
        getPodcastList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListPodcastsRequest.fromBuffer(value),
        ($2.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListEpisodesRequest, $2.PodcastEpisode>(
        'GetPodcastEpisodeList',
        getPodcastEpisodeList_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ListEpisodesRequest.fromBuffer(value),
        ($2.PodcastEpisode value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StreamPodcastRequest, $2.ByteData>(
        'StreamPodcast',
        streamPodcast_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.StreamPodcastRequest.fromBuffer(value),
        ($2.ByteData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreatePodcastRequest, $2.Podcast>(
        'NewPodcast',
        newPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreatePodcastRequest.fromBuffer(value),
        ($2.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateEpisodeRequest, $2.PodcastEpisode>(
        'NewEpisode',
        newEpisode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateEpisodeRequest.fromBuffer(value),
        ($2.PodcastEpisode value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Podcast, $2.Podcast>(
        'EditPodcast',
        editPodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Podcast.fromBuffer(value),
        ($2.Podcast value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Podcast, $3.Empty>(
        'DeletePodcast',
        deletePodcast_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Podcast.fromBuffer(value),
        ($3.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$2.Podcast> getPodcastList_Pre($grpc.ServiceCall call, $async.Future<$2.ListPodcastsRequest> request) async* {
    yield* getPodcastList(call, await request);
  }

  $async.Stream<$2.PodcastEpisode> getPodcastEpisodeList_Pre($grpc.ServiceCall call, $async.Future<$2.ListEpisodesRequest> request) async* {
    yield* getPodcastEpisodeList(call, await request);
  }

  $async.Stream<$2.ByteData> streamPodcast_Pre($grpc.ServiceCall call, $async.Future<$2.StreamPodcastRequest> request) async* {
    yield* streamPodcast(call, await request);
  }

  $async.Future<$2.Podcast> newPodcast_Pre($grpc.ServiceCall call, $async.Future<$2.CreatePodcastRequest> request) async {
    return newPodcast(call, await request);
  }

  $async.Future<$2.PodcastEpisode> newEpisode_Pre($grpc.ServiceCall call, $async.Future<$2.CreateEpisodeRequest> request) async {
    return newEpisode(call, await request);
  }

  $async.Future<$2.Podcast> editPodcast_Pre($grpc.ServiceCall call, $async.Future<$2.Podcast> request) async {
    return editPodcast(call, await request);
  }

  $async.Future<$3.Empty> deletePodcast_Pre($grpc.ServiceCall call, $async.Future<$2.Podcast> request) async {
    return deletePodcast(call, await request);
  }

  $async.Stream<$2.Podcast> getPodcastList($grpc.ServiceCall call, $2.ListPodcastsRequest request);
  $async.Stream<$2.PodcastEpisode> getPodcastEpisodeList($grpc.ServiceCall call, $2.ListEpisodesRequest request);
  $async.Stream<$2.ByteData> streamPodcast($grpc.ServiceCall call, $2.StreamPodcastRequest request);
  $async.Future<$2.Podcast> newPodcast($grpc.ServiceCall call, $2.CreatePodcastRequest request);
  $async.Future<$2.PodcastEpisode> newEpisode($grpc.ServiceCall call, $2.CreateEpisodeRequest request);
  $async.Future<$2.Podcast> editPodcast($grpc.ServiceCall call, $2.Podcast request);
  $async.Future<$3.Empty> deletePodcast($grpc.ServiceCall call, $2.Podcast request);
}
