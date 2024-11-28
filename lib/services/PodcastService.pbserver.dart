//
//  Generated code. Do not modify.
//  source: PodcastService.proto
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
import 'PodcastMessages.pb.dart' as $3;
import 'PodcastService.pbjson.dart';

export 'PodcastService.pb.dart';

abstract class PodcastServiceBase extends $pb.GeneratedService {
  $async.Future<$3.Podcast> getPodcastList($pb.ServerContext ctx, $3.ListPodcastsRequest request);
  $async.Future<$3.PodcastEpisode> getPodcastEpisodeList($pb.ServerContext ctx, $3.ListEpisodesRequest request);
  $async.Future<$3.ByteData> streamPodcast($pb.ServerContext ctx, $3.StreamPodcastRequest request);
  $async.Future<$3.Podcast> newPodcast($pb.ServerContext ctx, $3.CreatePodcastRequest request);
  $async.Future<$3.PodcastEpisode> newEpisode($pb.ServerContext ctx, $3.CreateEpisodeRequest request);
  $async.Future<$3.Podcast> editPodcast($pb.ServerContext ctx, $3.Podcast request);
  $async.Future<$0.Empty> deletePodcast($pb.ServerContext ctx, $3.Podcast request);
  $async.Future<$3.PodcastServiceHealthResponse> healthCheck($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetPodcastList': return $3.ListPodcastsRequest();
      case 'GetPodcastEpisodeList': return $3.ListEpisodesRequest();
      case 'StreamPodcast': return $3.StreamPodcastRequest();
      case 'NewPodcast': return $3.CreatePodcastRequest();
      case 'NewEpisode': return $3.CreateEpisodeRequest();
      case 'EditPodcast': return $3.Podcast();
      case 'DeletePodcast': return $3.Podcast();
      case 'HealthCheck': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetPodcastList': return this.getPodcastList(ctx, request as $3.ListPodcastsRequest);
      case 'GetPodcastEpisodeList': return this.getPodcastEpisodeList(ctx, request as $3.ListEpisodesRequest);
      case 'StreamPodcast': return this.streamPodcast(ctx, request as $3.StreamPodcastRequest);
      case 'NewPodcast': return this.newPodcast(ctx, request as $3.CreatePodcastRequest);
      case 'NewEpisode': return this.newEpisode(ctx, request as $3.CreateEpisodeRequest);
      case 'EditPodcast': return this.editPodcast(ctx, request as $3.Podcast);
      case 'DeletePodcast': return this.deletePodcast(ctx, request as $3.Podcast);
      case 'HealthCheck': return this.healthCheck(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PodcastServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PodcastServiceBase$messageJson;
}

