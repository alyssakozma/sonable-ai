//
//  Generated code. Do not modify.
//  source: AggregateMessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DataSourceType extends $pb.ProtobufEnum {
  static const DataSourceType TEXT = DataSourceType._(0, _omitEnumNames ? '' : 'TEXT');
  static const DataSourceType VIDEO = DataSourceType._(1, _omitEnumNames ? '' : 'VIDEO');
  static const DataSourceType AUDIO = DataSourceType._(2, _omitEnumNames ? '' : 'AUDIO');

  static const $core.List<DataSourceType> values = <DataSourceType> [
    TEXT,
    VIDEO,
    AUDIO,
  ];

  static final $core.Map<$core.int, DataSourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataSourceType? valueOf($core.int value) => _byValue[value];

  const DataSourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
