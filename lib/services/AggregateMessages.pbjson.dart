//
//  Generated code. Do not modify.
//  source: AggregateMessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dataSourceTypeDescriptor instead')
const DataSourceType$json = {
  '1': 'DataSourceType',
  '2': [
    {'1': 'TEXT', '2': 0},
    {'1': 'VIDEO', '2': 1},
    {'1': 'AUDIO', '2': 2},
  ],
};

/// Descriptor for `DataSourceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataSourceTypeDescriptor = $convert.base64Decode(
    'Cg5EYXRhU291cmNlVHlwZRIICgRURVhUEAASCQoFVklERU8QARIJCgVBVURJTxAC');

@$core.Deprecated('Use dataSourceDescriptor instead')
const DataSource$json = {
  '1': 'DataSource',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'baseUrl', '3': 3, '4': 1, '5': 9, '10': 'baseUrl'},
  ],
};

/// Descriptor for `DataSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataSourceDescriptor = $convert.base64Decode(
    'CgpEYXRhU291cmNlEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhgKB2Jhc2'
    'VVcmwYAyABKAlSB2Jhc2VVcmw=');

@$core.Deprecated('Use articleDataDescriptor instead')
const ArticleData$json = {
  '1': 'ArticleData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.DataSource', '10': 'source'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    {'1': 'tags', '3': 6, '4': 3, '5': 11, '6': '.Tag', '10': 'tags'},
    {'1': 'processedText', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'processedText', '17': true},
    {'1': 'date', '3': 8, '4': 1, '5': 11, '6': '.Date', '10': 'date'},
    {'1': 'type', '3': 9, '4': 1, '5': 14, '6': '.DataSourceType', '10': 'type'},
  ],
  '8': [
    {'1': '_processedText'},
  ],
};

/// Descriptor for `ArticleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleDataDescriptor = $convert.base64Decode(
    'CgtBcnRpY2xlRGF0YRIOCgJpZBgBIAEoBVICaWQSIwoGc291cmNlGAIgASgLMgsuRGF0YVNvdX'
    'JjZVIGc291cmNlEhAKA3VybBgDIAEoCVIDdXJsEhQKBXRpdGxlGAQgASgJUgV0aXRsZRIYCgdj'
    'b250ZW50GAUgASgJUgdjb250ZW50EhgKBHRhZ3MYBiADKAsyBC5UYWdSBHRhZ3MSKQoNcHJvY2'
    'Vzc2VkVGV4dBgHIAEoCUgAUg1wcm9jZXNzZWRUZXh0iAEBEhkKBGRhdGUYCCABKAsyBS5EYXRl'
    'UgRkYXRlEiMKBHR5cGUYCSABKA4yDy5EYXRhU291cmNlVHlwZVIEdHlwZUIQCg5fcHJvY2Vzc2'
    'VkVGV4dA==');

@$core.Deprecated('Use aggregateRequestDescriptor instead')
const AggregateRequest$json = {
  '1': 'AggregateRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'tags', '3': 2, '4': 3, '5': 11, '6': '.Tag', '10': 'tags'},
    {'1': 'sources', '3': 3, '4': 3, '5': 11, '6': '.DataSource', '10': 'sources'},
    {'1': 'ignoreSources', '3': 4, '4': 3, '5': 11, '6': '.DataSource', '10': 'ignoreSources'},
  ],
};

/// Descriptor for `AggregateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aggregateRequestDescriptor = $convert.base64Decode(
    'ChBBZ2dyZWdhdGVSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoBVIGdXNlcklkEhgKBHRhZ3MYAiADKA'
    'syBC5UYWdSBHRhZ3MSJQoHc291cmNlcxgDIAMoCzILLkRhdGFTb3VyY2VSB3NvdXJjZXMSMQoN'
    'aWdub3JlU291cmNlcxgEIAMoCzILLkRhdGFTb3VyY2VSDWlnbm9yZVNvdXJjZXM=');

