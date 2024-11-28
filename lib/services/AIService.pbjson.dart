//
//  Generated code. Do not modify.
//  source: AIService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'AIMessages.pbjson.dart' as $2;
import 'AggregateMessages.pbjson.dart' as $1;
import 'Base.pbjson.dart' as $0;
import 'PodcastMessages.pbjson.dart' as $3;

const $core.Map<$core.String, $core.dynamic> AIServiceBase$json = {
  '1': 'AIService',
  '2': [
    {'1': 'generatePodcast', '2': '.generated.GenerateEpisodeRequest', '3': '.generated.ByteData', '4': {}, '6': true},
  ],
};

@$core.Deprecated('Use aIServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AIServiceBase$messageJson = {
  '.generated.GenerateEpisodeRequest': $2.GenerateEpisodeRequest$json,
  '.generated.ArticleData': $1.ArticleData$json,
  '.generated.DataSource': $1.DataSource$json,
  '.generated.Tag': $0.Tag$json,
  '.generated.Date': $0.Date$json,
  '.generated.ByteData': $3.ByteData$json,
};

/// Descriptor for `AIService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List aIServiceDescriptor = $convert.base64Decode(
    'CglBSVNlcnZpY2USdQoPZ2VuZXJhdGVQb2RjYXN0EiEuZ2VuZXJhdGVkLkdlbmVyYXRlRXBpc2'
    '9kZVJlcXVlc3QaEy5nZW5lcmF0ZWQuQnl0ZURhdGEiKILT5JMCIjoBKiIdL3YxL2FpU2Vydmlj'
    'ZS9nZW5lcmF0ZVBvZGNhc3QwAQ==');

