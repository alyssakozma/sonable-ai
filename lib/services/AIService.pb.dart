//
//  Generated code. Do not modify.
//  source: AIService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AIMessages.pb.dart' as $2;
import 'PodcastMessages.pb.dart' as $3;

class AIServiceApi {
  $pb.RpcClient _client;
  AIServiceApi(this._client);

  $async.Future<$3.ByteData> generatePodcast($pb.ClientContext? ctx, $2.GenerateEpisodeRequest request) =>
    _client.invoke<$3.ByteData>(ctx, 'AIService', 'generatePodcast', request, $3.ByteData())
  ;
}

