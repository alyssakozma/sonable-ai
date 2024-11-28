//
//  Generated code. Do not modify.
//  source: AIService.proto
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

import 'AIMessages.pb.dart' as $2;
import 'AIService.pbjson.dart';
import 'PodcastMessages.pb.dart' as $3;

export 'AIService.pb.dart';

abstract class AIServiceBase extends $pb.GeneratedService {
  $async.Future<$3.ByteData> generatePodcast($pb.ServerContext ctx, $2.GenerateEpisodeRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'generatePodcast': return $2.GenerateEpisodeRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'generatePodcast': return this.generatePodcast(ctx, request as $2.GenerateEpisodeRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AIServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AIServiceBase$messageJson;
}

