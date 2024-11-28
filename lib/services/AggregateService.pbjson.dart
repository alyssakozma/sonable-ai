//
//  Generated code. Do not modify.
//  source: AggregateService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'AggregateMessages.pbjson.dart' as $1;
import 'Base.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> AggregateServiceBase$json = {
  '1': 'AggregateService',
  '2': [
    {'1': 'requestAggregate', '2': '.generated.AggregateRequest', '3': '.generated.ArticleData', '4': {}, '6': true},
  ],
};

@$core.Deprecated('Use aggregateServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AggregateServiceBase$messageJson = {
  '.generated.AggregateRequest': $1.AggregateRequest$json,
  '.generated.Tag': $0.Tag$json,
  '.generated.DataSource': $1.DataSource$json,
  '.generated.ArticleData': $1.ArticleData$json,
  '.generated.Date': $0.Date$json,
};

/// Descriptor for `AggregateService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List aggregateServiceDescriptor = $convert.base64Decode(
    'ChBBZ2dyZWdhdGVTZXJ2aWNlEnQKEHJlcXVlc3RBZ2dyZWdhdGUSGy5nZW5lcmF0ZWQuQWdncm'
    'VnYXRlUmVxdWVzdBoWLmdlbmVyYXRlZC5BcnRpY2xlRGF0YSIpgtPkkwIjOgEqIh4vdjEvYWdn'
    'cmVnYXRlL3JlcXVlc3RBZ2dyZWdhdGUwAQ==');

