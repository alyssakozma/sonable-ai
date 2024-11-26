//
//  Generated code. Do not modify.
//  source: AIMessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AggregateMessages.pb.dart' as $0;

///
/// Request object for generating a podcast episode.
class GenerateEpisodeRequest extends $pb.GeneratedMessage {
  factory GenerateEpisodeRequest({
    $core.int? podcastId,
    $core.Iterable<$0.ArticleData>? data,
  }) {
    final $result = create();
    if (podcastId != null) {
      $result.podcastId = podcastId;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  GenerateEpisodeRequest._() : super();
  factory GenerateEpisodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenerateEpisodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GenerateEpisodeRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'podcastId', $pb.PbFieldType.O3, protoName: 'podcastId')
    ..pc<$0.ArticleData>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: $0.ArticleData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenerateEpisodeRequest clone() => GenerateEpisodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenerateEpisodeRequest copyWith(void Function(GenerateEpisodeRequest) updates) => super.copyWith((message) => updates(message as GenerateEpisodeRequest)) as GenerateEpisodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateEpisodeRequest create() => GenerateEpisodeRequest._();
  GenerateEpisodeRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateEpisodeRequest> createRepeated() => $pb.PbList<GenerateEpisodeRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateEpisodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenerateEpisodeRequest>(create);
  static GenerateEpisodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get podcastId => $_getIZ(0);
  @$pb.TagNumber(1)
  set podcastId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodcastId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodcastId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.ArticleData> get data => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
