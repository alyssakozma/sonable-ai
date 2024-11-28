//
//  Generated code. Do not modify.
//  source: PodcastMessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use podcastHostDescriptor instead')
const PodcastHost$json = {
  '1': 'PodcastHost',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'gender', '3': 3, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'voiceTags', '3': 4, '4': 3, '5': 11, '6': '.generated.Tag', '10': 'voiceTags'},
    {'1': 'personalityTags', '3': 5, '4': 3, '5': 11, '6': '.generated.Tag', '10': 'personalityTags'},
  ],
};

/// Descriptor for `PodcastHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastHostDescriptor = $convert.base64Decode(
    'CgtQb2RjYXN0SG9zdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZnZW'
    '5kZXIYAyABKAlSBmdlbmRlchIsCgl2b2ljZVRhZ3MYBCADKAsyDi5nZW5lcmF0ZWQuVGFnUgl2'
    'b2ljZVRhZ3MSOAoPcGVyc29uYWxpdHlUYWdzGAUgAygLMg4uZ2VuZXJhdGVkLlRhZ1IPcGVyc2'
    '9uYWxpdHlUYWdz');

@$core.Deprecated('Use podcastEpisodeDescriptor instead')
const PodcastEpisode$json = {
  '1': 'PodcastEpisode',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.generated.Date', '10': 'date'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
  ],
};

/// Descriptor for `PodcastEpisode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastEpisodeDescriptor = $convert.base64Decode(
    'Cg5Qb2RjYXN0RXBpc29kZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIjCg'
    'RkYXRlGAMgASgLMg8uZ2VuZXJhdGVkLkRhdGVSBGRhdGUSGAoHc3VtbWFyeRgEIAEoCVIHc3Vt'
    'bWFyeQ==');

@$core.Deprecated('Use podcastDescriptor instead')
const Podcast$json = {
  '1': 'Podcast',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'topics', '3': 3, '4': 3, '5': 11, '6': '.generated.Tag', '10': 'topics'},
    {'1': 'hosts', '3': 4, '4': 3, '5': 11, '6': '.generated.PodcastHost', '10': 'hosts'},
  ],
};

/// Descriptor for `Podcast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastDescriptor = $convert.base64Decode(
    'CgdQb2RjYXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiYKBnRvcGljcx'
    'gDIAMoCzIOLmdlbmVyYXRlZC5UYWdSBnRvcGljcxIsCgVob3N0cxgEIAMoCzIWLmdlbmVyYXRl'
    'ZC5Qb2RjYXN0SG9zdFIFaG9zdHM=');

@$core.Deprecated('Use byteDataDescriptor instead')
const ByteData$json = {
  '1': 'ByteData',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ByteData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List byteDataDescriptor = $convert.base64Decode(
    'CghCeXRlRGF0YRISCgRkYXRhGAEgASgMUgRkYXRh');

@$core.Deprecated('Use streamPodcastRequestDescriptor instead')
const StreamPodcastRequest$json = {
  '1': 'StreamPodcastRequest',
  '2': [
    {'1': 'podcastId', '3': 1, '4': 1, '5': 5, '10': 'podcastId'},
    {'1': 'episodeId', '3': 2, '4': 1, '5': 5, '10': 'episodeId'},
  ],
};

/// Descriptor for `StreamPodcastRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamPodcastRequestDescriptor = $convert.base64Decode(
    'ChRTdHJlYW1Qb2RjYXN0UmVxdWVzdBIcCglwb2RjYXN0SWQYASABKAVSCXBvZGNhc3RJZBIcCg'
    'llcGlzb2RlSWQYAiABKAVSCWVwaXNvZGVJZA==');

@$core.Deprecated('Use createPodcastRequestDescriptor instead')
const CreatePodcastRequest$json = {
  '1': 'CreatePodcastRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'podcast', '3': 2, '4': 1, '5': 11, '6': '.generated.Podcast', '10': 'podcast'},
  ],
};

/// Descriptor for `CreatePodcastRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPodcastRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQb2RjYXN0UmVxdWVzdBIWCgZ1c2VySWQYASABKAVSBnVzZXJJZBIsCgdwb2RjYX'
    'N0GAIgASgLMhIuZ2VuZXJhdGVkLlBvZGNhc3RSB3BvZGNhc3Q=');

@$core.Deprecated('Use createEpisodeRequestDescriptor instead')
const CreateEpisodeRequest$json = {
  '1': 'CreateEpisodeRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'podcastId', '3': 2, '4': 1, '5': 5, '10': 'podcastId'},
  ],
};

/// Descriptor for `CreateEpisodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createEpisodeRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVFcGlzb2RlUmVxdWVzdBIWCgZ1c2VySWQYASABKAVSBnVzZXJJZBIcCglwb2RjYX'
    'N0SWQYAiABKAVSCXBvZGNhc3RJZA==');

@$core.Deprecated('Use listEpisodesRequestDescriptor instead')
const ListEpisodesRequest$json = {
  '1': 'ListEpisodesRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'podcastId', '3': 2, '4': 1, '5': 5, '10': 'podcastId'},
  ],
};

/// Descriptor for `ListEpisodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEpisodesRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0RXBpc29kZXNSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklkEhwKCXBvZGNhc3'
    'RJZBgCIAEoBVIJcG9kY2FzdElk');

@$core.Deprecated('Use listPodcastsRequestDescriptor instead')
const ListPodcastsRequest$json = {
  '1': 'ListPodcastsRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `ListPodcastsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPodcastsRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0UG9kY2FzdHNSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklk');

@$core.Deprecated('Use podcastServiceHealthResponseDescriptor instead')
const PodcastServiceHealthResponse$json = {
  '1': 'PodcastServiceHealthResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `PodcastServiceHealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastServiceHealthResponseDescriptor = $convert.base64Decode(
    'ChxQb2RjYXN0U2VydmljZUhlYWx0aFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoBVIGc3RhdHVz');

