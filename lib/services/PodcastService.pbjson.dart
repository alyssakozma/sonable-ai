//
//  Generated code. Do not modify.
//  source: PodcastService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'Base.pbjson.dart' as $0;
import 'PodcastMessages.pbjson.dart' as $3;

const $core.Map<$core.String, $core.dynamic> PodcastServiceBase$json = {
  '1': 'PodcastService',
  '2': [
    {'1': 'GetPodcastList', '2': '.generated.ListPodcastsRequest', '3': '.generated.Podcast', '4': {}, '6': true},
    {'1': 'GetPodcastEpisodeList', '2': '.generated.ListEpisodesRequest', '3': '.generated.PodcastEpisode', '4': {}, '6': true},
    {'1': 'StreamPodcast', '2': '.generated.StreamPodcastRequest', '3': '.generated.ByteData', '4': {}, '6': true},
    {'1': 'NewPodcast', '2': '.generated.CreatePodcastRequest', '3': '.generated.Podcast', '4': {}},
    {'1': 'NewEpisode', '2': '.generated.CreateEpisodeRequest', '3': '.generated.PodcastEpisode', '4': {}},
    {'1': 'EditPodcast', '2': '.generated.Podcast', '3': '.generated.Podcast', '4': {}},
    {'1': 'DeletePodcast', '2': '.generated.Podcast', '3': '.generated.Empty', '4': {}},
    {'1': 'HealthCheck', '2': '.generated.Empty', '3': '.generated.PodcastServiceHealthResponse', '4': {}},
  ],
};

@$core.Deprecated('Use podcastServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PodcastServiceBase$messageJson = {
  '.generated.ListPodcastsRequest': $3.ListPodcastsRequest$json,
  '.generated.Podcast': $3.Podcast$json,
  '.generated.Tag': $0.Tag$json,
  '.generated.PodcastHost': $3.PodcastHost$json,
  '.generated.ListEpisodesRequest': $3.ListEpisodesRequest$json,
  '.generated.PodcastEpisode': $3.PodcastEpisode$json,
  '.generated.Date': $0.Date$json,
  '.generated.StreamPodcastRequest': $3.StreamPodcastRequest$json,
  '.generated.ByteData': $3.ByteData$json,
  '.generated.CreatePodcastRequest': $3.CreatePodcastRequest$json,
  '.generated.CreateEpisodeRequest': $3.CreateEpisodeRequest$json,
  '.generated.Empty': $0.Empty$json,
  '.generated.PodcastServiceHealthResponse': $3.PodcastServiceHealthResponse$json,
};

/// Descriptor for `PodcastService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List podcastServiceDescriptor = $convert.base64Decode(
    'Cg5Qb2RjYXN0U2VydmljZRJrCg5HZXRQb2RjYXN0TGlzdBIeLmdlbmVyYXRlZC5MaXN0UG9kY2'
    'FzdHNSZXF1ZXN0GhIuZ2VuZXJhdGVkLlBvZGNhc3QiI4LT5JMCHToBKiIYL3YxL3BvZGNhc3Rz'
    'L2dldFBvZGNhc3RzMAESeQoVR2V0UG9kY2FzdEVwaXNvZGVMaXN0Eh4uZ2VuZXJhdGVkLkxpc3'
    'RFcGlzb2Rlc1JlcXVlc3QaGS5nZW5lcmF0ZWQuUG9kY2FzdEVwaXNvZGUiI4LT5JMCHToBKiIY'
    'L3YxL3BvZGNhc3RzL2dldEVwaXNvZGVzMAESZwoNU3RyZWFtUG9kY2FzdBIfLmdlbmVyYXRlZC'
    '5TdHJlYW1Qb2RjYXN0UmVxdWVzdBoTLmdlbmVyYXRlZC5CeXRlRGF0YSIegtPkkwIYOgEqIhMv'
    'djEvcG9kY2FzdHMvc3RyZWFtMAESZQoKTmV3UG9kY2FzdBIfLmdlbmVyYXRlZC5DcmVhdGVQb2'
    'RjYXN0UmVxdWVzdBoSLmdlbmVyYXRlZC5Qb2RjYXN0IiKC0+STAhw6ASoiFy92MS9wb2RjYXN0'
    'cy9uZXdQb2RjYXN0EmwKCk5ld0VwaXNvZGUSHy5nZW5lcmF0ZWQuQ3JlYXRlRXBpc29kZVJlcX'
    'Vlc3QaGS5nZW5lcmF0ZWQuUG9kY2FzdEVwaXNvZGUiIoLT5JMCHDoBKiIXL3YxL3BvZGNhc3Rz'
    'L25ld0VwaXNvZGUSWQoLRWRpdFBvZGNhc3QSEi5nZW5lcmF0ZWQuUG9kY2FzdBoSLmdlbmVyYX'
    'RlZC5Qb2RjYXN0IiKC0+STAhw6ASoiFy92MS9wb2RjYXN0L2VkaXRQb2RjYXN0ElwKDURlbGV0'
    'ZVBvZGNhc3QSEi5nZW5lcmF0ZWQuUG9kY2FzdBoQLmdlbmVyYXRlZC5FbXB0eSIlgtPkkwIfOg'
    'EqIhovdjEvcG9kY2FzdHMvZGVsZXRlUG9kY2FzdBJlCgtIZWFsdGhDaGVjaxIQLmdlbmVyYXRl'
    'ZC5FbXB0eRonLmdlbmVyYXRlZC5Qb2RjYXN0U2VydmljZUhlYWx0aFJlc3BvbnNlIhuC0+STAh'
    'USEy92MS9wb2RjYXN0cy9oZWFsdGg=');

