//
//  Generated code. Do not modify.
//  source: schema.proto
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
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'voiceTags', '3': 3, '4': 3, '5': 9, '10': 'voiceTags'},
    {'1': 'personalityTags', '3': 4, '4': 3, '5': 9, '10': 'personalityTags'},
  ],
};

/// Descriptor for `PodcastHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastHostDescriptor = $convert.base64Decode(
    'CgtQb2RjYXN0SG9zdBISCgRuYW1lGAEgASgJUgRuYW1lEhYKBmdlbmRlchgCIAEoCVIGZ2VuZG'
    'VyEhwKCXZvaWNlVGFncxgDIAMoCVIJdm9pY2VUYWdzEigKD3BlcnNvbmFsaXR5VGFncxgEIAMo'
    'CVIPcGVyc29uYWxpdHlUYWdz');

@$core.Deprecated('Use podcastAudioDescriptor instead')
const PodcastAudio$json = {
  '1': 'PodcastAudio',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `PodcastAudio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastAudioDescriptor = $convert.base64Decode(
    'CgxQb2RjYXN0QXVkaW8SEgoEZGF0YRgBIAEoDFIEZGF0YQ==');

@$core.Deprecated('Use podcastEpisodeDescriptor instead')
const PodcastEpisode$json = {
  '1': 'PodcastEpisode',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.Date', '10': 'date'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
  ],
};

/// Descriptor for `PodcastEpisode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastEpisodeDescriptor = $convert.base64Decode(
    'Cg5Qb2RjYXN0RXBpc29kZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIZCg'
    'RkYXRlGAMgASgLMgUuRGF0ZVIEZGF0ZRIYCgdzdW1tYXJ5GAQgASgJUgdzdW1tYXJ5');

@$core.Deprecated('Use podcastDescriptor instead')
const Podcast$json = {
  '1': 'Podcast',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'topics', '3': 2, '4': 3, '5': 9, '10': 'topics'},
    {'1': 'hosts', '3': 3, '4': 3, '5': 11, '6': '.PodcastHost', '10': 'hosts'},
  ],
};

/// Descriptor for `Podcast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastDescriptor = $convert.base64Decode(
    'CgdQb2RjYXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFgoGdG9waWNzGAIgAygJUgZ0b3BpY3MSIg'
    'oFaG9zdHMYAyADKAsyDC5Qb2RjYXN0SG9zdFIFaG9zdHM=');

@$core.Deprecated('Use podcastListDescriptor instead')
const PodcastList$json = {
  '1': 'PodcastList',
  '2': [
    {'1': 'podcasts', '3': 1, '4': 3, '5': 11, '6': '.Podcast', '10': 'podcasts'},
  ],
};

/// Descriptor for `PodcastList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastListDescriptor = $convert.base64Decode(
    'CgtQb2RjYXN0TGlzdBIkCghwb2RjYXN0cxgBIAMoCzIILlBvZGNhc3RSCHBvZGNhc3Rz');

@$core.Deprecated('Use podcastEpisodeListDescriptor instead')
const PodcastEpisodeList$json = {
  '1': 'PodcastEpisodeList',
  '2': [
    {'1': 'episodes', '3': 1, '4': 3, '5': 11, '6': '.PodcastEpisode', '10': 'episodes'},
  ],
};

/// Descriptor for `PodcastEpisodeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podcastEpisodeListDescriptor = $convert.base64Decode(
    'ChJQb2RjYXN0RXBpc29kZUxpc3QSKwoIZXBpc29kZXMYASADKAsyDy5Qb2RjYXN0RXBpc29kZV'
    'IIZXBpc29kZXM=');

@$core.Deprecated('Use streamPodcastRequestDescriptor instead')
const StreamPodcastRequest$json = {
  '1': 'StreamPodcastRequest',
  '2': [
    {'1': 'podcast', '3': 1, '4': 1, '5': 11, '6': '.Podcast', '10': 'podcast'},
    {'1': 'episodeId', '3': 2, '4': 1, '5': 5, '10': 'episodeId'},
  ],
};

/// Descriptor for `StreamPodcastRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamPodcastRequestDescriptor = $convert.base64Decode(
    'ChRTdHJlYW1Qb2RjYXN0UmVxdWVzdBIiCgdwb2RjYXN0GAEgASgLMgguUG9kY2FzdFIHcG9kY2'
    'FzdBIcCgllcGlzb2RlSWQYAiABKAVSCWVwaXNvZGVJZA==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZW1haWwYAiABKAlSBWVtYWls');

@$core.Deprecated('Use dateDescriptor instead')
const Date$json = {
  '1': 'Date',
  '2': [
    {'1': 'year', '3': 1, '4': 1, '5': 5, '10': 'year'},
    {'1': 'month', '3': 2, '4': 1, '5': 5, '10': 'month'},
    {'1': 'day', '3': 3, '4': 1, '5': 5, '10': 'day'},
  ],
};

/// Descriptor for `Date`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateDescriptor = $convert.base64Decode(
    'CgREYXRlEhIKBHllYXIYASABKAVSBHllYXISFAoFbW9udGgYAiABKAVSBW1vbnRoEhAKA2RheR'
    'gDIAEoBVIDZGF5');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUg'
    'hwYXNzd29yZA==');

@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = {
  '1': 'LogoutRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor = $convert.base64Decode(
    'Cg1Mb2dvdXRSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbA==');

