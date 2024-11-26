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

import 'AggregateMessages.pbenum.dart';
import 'Base.pb.dart' as $3;

export 'AggregateMessages.pbenum.dart';

///
/// Represents a text, video, or audio source. (e.g. abc.com, bloomberg.com, twitter maybe in the future?)
class DataSource extends $pb.GeneratedMessage {
  factory DataSource({
    $core.int? id,
    $core.String? name,
    $core.String? baseUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (baseUrl != null) {
      $result.baseUrl = baseUrl;
    }
    return $result;
  }
  DataSource._() : super();
  factory DataSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataSource', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'baseUrl', protoName: 'baseUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataSource clone() => DataSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataSource copyWith(void Function(DataSource) updates) => super.copyWith((message) => updates(message as DataSource)) as DataSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataSource create() => DataSource._();
  DataSource createEmptyInstance() => create();
  static $pb.PbList<DataSource> createRepeated() => $pb.PbList<DataSource>();
  @$core.pragma('dart2js:noInline')
  static DataSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataSource>(create);
  static DataSource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get baseUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set baseUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseUrl() => clearField(3);
}

///
/// Represents a particular "article." This can be text, video, or audio.
class ArticleData extends $pb.GeneratedMessage {
  factory ArticleData({
    $core.int? id,
    DataSource? source,
    $core.String? url,
    $core.String? title,
    $core.String? content,
    $core.Iterable<$3.Tag>? tags,
    $core.String? processedText,
    $3.Date? date,
    DataSourceType? type,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (source != null) {
      $result.source = source;
    }
    if (url != null) {
      $result.url = url;
    }
    if (title != null) {
      $result.title = title;
    }
    if (content != null) {
      $result.content = content;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (processedText != null) {
      $result.processedText = processedText;
    }
    if (date != null) {
      $result.date = date;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  ArticleData._() : super();
  factory ArticleData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArticleData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ArticleData', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOM<DataSource>(2, _omitFieldNames ? '' : 'source', subBuilder: DataSource.create)
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'content')
    ..pc<$3.Tag>(6, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: $3.Tag.create)
    ..aOS(7, _omitFieldNames ? '' : 'processedText', protoName: 'processedText')
    ..aOM<$3.Date>(8, _omitFieldNames ? '' : 'date', subBuilder: $3.Date.create)
    ..e<DataSourceType>(9, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: DataSourceType.TEXT, valueOf: DataSourceType.valueOf, enumValues: DataSourceType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArticleData clone() => ArticleData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArticleData copyWith(void Function(ArticleData) updates) => super.copyWith((message) => updates(message as ArticleData)) as ArticleData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArticleData create() => ArticleData._();
  ArticleData createEmptyInstance() => create();
  static $pb.PbList<ArticleData> createRepeated() => $pb.PbList<ArticleData>();
  @$core.pragma('dart2js:noInline')
  static ArticleData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArticleData>(create);
  static ArticleData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  DataSource get source => $_getN(1);
  @$pb.TagNumber(2)
  set source(DataSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => clearField(2);
  @$pb.TagNumber(2)
  DataSource ensureSource() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$3.Tag> get tags => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get processedText => $_getSZ(6);
  @$pb.TagNumber(7)
  set processedText($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasProcessedText() => $_has(6);
  @$pb.TagNumber(7)
  void clearProcessedText() => clearField(7);

  @$pb.TagNumber(8)
  $3.Date get date => $_getN(7);
  @$pb.TagNumber(8)
  set date($3.Date v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearDate() => clearField(8);
  @$pb.TagNumber(8)
  $3.Date ensureDate() => $_ensure(7);

  @$pb.TagNumber(9)
  DataSourceType get type => $_getN(8);
  @$pb.TagNumber(9)
  set type(DataSourceType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(9)
  void clearType() => clearField(9);
}

///
/// Request object for an aggregate of processed articles related to the input Tags.
class AggregateRequest extends $pb.GeneratedMessage {
  factory AggregateRequest({
    $core.int? userId,
    $core.Iterable<$3.Tag>? tags,
    $core.Iterable<DataSource>? sources,
    $core.Iterable<DataSource>? ignoreSources,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (sources != null) {
      $result.sources.addAll(sources);
    }
    if (ignoreSources != null) {
      $result.ignoreSources.addAll(ignoreSources);
    }
    return $result;
  }
  AggregateRequest._() : super();
  factory AggregateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AggregateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AggregateRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..pc<$3.Tag>(2, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: $3.Tag.create)
    ..pc<DataSource>(3, _omitFieldNames ? '' : 'sources', $pb.PbFieldType.PM, subBuilder: DataSource.create)
    ..pc<DataSource>(4, _omitFieldNames ? '' : 'ignoreSources', $pb.PbFieldType.PM, protoName: 'ignoreSources', subBuilder: DataSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AggregateRequest clone() => AggregateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AggregateRequest copyWith(void Function(AggregateRequest) updates) => super.copyWith((message) => updates(message as AggregateRequest)) as AggregateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AggregateRequest create() => AggregateRequest._();
  AggregateRequest createEmptyInstance() => create();
  static $pb.PbList<AggregateRequest> createRepeated() => $pb.PbList<AggregateRequest>();
  @$core.pragma('dart2js:noInline')
  static AggregateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AggregateRequest>(create);
  static AggregateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$3.Tag> get tags => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<DataSource> get sources => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<DataSource> get ignoreSources => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
