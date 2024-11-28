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

import 'package:protobuf/protobuf.dart' as $pb;

import 'Base.pb.dart' as $0;
import 'PodcastMessages.pb.dart' as $3;

class PodcastServiceApi {
  $pb.RpcClient _client;
  PodcastServiceApi(this._client);

  $async.Future<$3.Podcast> getPodcastList($pb.ClientContext? ctx, $3.ListPodcastsRequest request) =>
    _client.invoke<$3.Podcast>(ctx, 'PodcastService', 'GetPodcastList', request, $3.Podcast())
  ;
  $async.Future<$3.PodcastEpisode> getPodcastEpisodeList($pb.ClientContext? ctx, $3.ListEpisodesRequest request) =>
    _client.invoke<$3.PodcastEpisode>(ctx, 'PodcastService', 'GetPodcastEpisodeList', request, $3.PodcastEpisode())
  ;
  $async.Future<$3.ByteData> streamPodcast($pb.ClientContext? ctx, $3.StreamPodcastRequest request) =>
    _client.invoke<$3.ByteData>(ctx, 'PodcastService', 'StreamPodcast', request, $3.ByteData())
  ;
  $async.Future<$3.Podcast> newPodcast($pb.ClientContext? ctx, $3.CreatePodcastRequest request) =>
    _client.invoke<$3.Podcast>(ctx, 'PodcastService', 'NewPodcast', request, $3.Podcast())
  ;
  $async.Future<$3.PodcastEpisode> newEpisode($pb.ClientContext? ctx, $3.CreateEpisodeRequest request) =>
    _client.invoke<$3.PodcastEpisode>(ctx, 'PodcastService', 'NewEpisode', request, $3.PodcastEpisode())
  ;
  $async.Future<$3.Podcast> editPodcast($pb.ClientContext? ctx, $3.Podcast request) =>
    _client.invoke<$3.Podcast>(ctx, 'PodcastService', 'EditPodcast', request, $3.Podcast())
  ;
  $async.Future<$0.Empty> deletePodcast($pb.ClientContext? ctx, $3.Podcast request) =>
    _client.invoke<$0.Empty>(ctx, 'PodcastService', 'DeletePodcast', request, $0.Empty())
  ;
  $async.Future<$3.PodcastServiceHealthResponse> healthCheck($pb.ClientContext? ctx, $0.Empty request) =>
    _client.invoke<$3.PodcastServiceHealthResponse>(ctx, 'PodcastService', 'HealthCheck', request, $3.PodcastServiceHealthResponse())
  ;
}

