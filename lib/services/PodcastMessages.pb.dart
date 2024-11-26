//
//  Generated code. Do not modify.
//  source: PodcastMessages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Base.pb.dart' as $3;

///
/// Contains lots of data that will be used to personalize the voice and personalities of each host.
class PodcastHost extends $pb.GeneratedMessage {
  factory PodcastHost({
    $core.int? id,
    $core.String? name,
    $core.String? gender,
    $core.Iterable<$3.Tag>? voiceTags,
    $core.Iterable<$3.Tag>? personalityTags,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (voiceTags != null) {
      $result.voiceTags.addAll(voiceTags);
    }
    if (personalityTags != null) {
      $result.personalityTags.addAll(personalityTags);
    }
    return $result;
  }
  PodcastHost._() : super();
  factory PodcastHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodcastHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodcastHost', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'gender')
    ..pc<$3.Tag>(4, _omitFieldNames ? '' : 'voiceTags', $pb.PbFieldType.PM, protoName: 'voiceTags', subBuilder: $3.Tag.create)
    ..pc<$3.Tag>(5, _omitFieldNames ? '' : 'personalityTags', $pb.PbFieldType.PM, protoName: 'personalityTags', subBuilder: $3.Tag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodcastHost clone() => PodcastHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodcastHost copyWith(void Function(PodcastHost) updates) => super.copyWith((message) => updates(message as PodcastHost)) as PodcastHost;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodcastHost create() => PodcastHost._();
  PodcastHost createEmptyInstance() => create();
  static $pb.PbList<PodcastHost> createRepeated() => $pb.PbList<PodcastHost>();
  @$core.pragma('dart2js:noInline')
  static PodcastHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodcastHost>(create);
  static PodcastHost? _defaultInstance;

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
  $core.String get gender => $_getSZ(2);
  @$pb.TagNumber(3)
  set gender($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$3.Tag> get voiceTags => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$3.Tag> get personalityTags => $_getList(4);
}

///
/// A particular episode of a podcast.
class PodcastEpisode extends $pb.GeneratedMessage {
  factory PodcastEpisode({
    $core.int? id,
    $core.String? name,
    $3.Date? date,
    $core.String? summary,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (date != null) {
      $result.date = date;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    return $result;
  }
  PodcastEpisode._() : super();
  factory PodcastEpisode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodcastEpisode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodcastEpisode', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Date>(3, _omitFieldNames ? '' : 'date', subBuilder: $3.Date.create)
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodcastEpisode clone() => PodcastEpisode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodcastEpisode copyWith(void Function(PodcastEpisode) updates) => super.copyWith((message) => updates(message as PodcastEpisode)) as PodcastEpisode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodcastEpisode create() => PodcastEpisode._();
  PodcastEpisode createEmptyInstance() => create();
  static $pb.PbList<PodcastEpisode> createRepeated() => $pb.PbList<PodcastEpisode>();
  @$core.pragma('dart2js:noInline')
  static PodcastEpisode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodcastEpisode>(create);
  static PodcastEpisode? _defaultInstance;

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
  $3.Date get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($3.Date v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $3.Date ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => clearField(4);
}

///
/// Holds higher level information about the podcast. Topics discussed, hosts, etc.
class Podcast extends $pb.GeneratedMessage {
  factory Podcast({
    $core.int? id,
    $core.String? name,
    $core.Iterable<$3.Tag>? topics,
    $core.Iterable<PodcastHost>? hosts,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    if (hosts != null) {
      $result.hosts.addAll(hosts);
    }
    return $result;
  }
  Podcast._() : super();
  factory Podcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Podcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Podcast', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<$3.Tag>(3, _omitFieldNames ? '' : 'topics', $pb.PbFieldType.PM, subBuilder: $3.Tag.create)
    ..pc<PodcastHost>(4, _omitFieldNames ? '' : 'hosts', $pb.PbFieldType.PM, subBuilder: PodcastHost.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Podcast clone() => Podcast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Podcast copyWith(void Function(Podcast) updates) => super.copyWith((message) => updates(message as Podcast)) as Podcast;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Podcast create() => Podcast._();
  Podcast createEmptyInstance() => create();
  static $pb.PbList<Podcast> createRepeated() => $pb.PbList<Podcast>();
  @$core.pragma('dart2js:noInline')
  static Podcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Podcast>(create);
  static Podcast? _defaultInstance;

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
  $core.List<$3.Tag> get topics => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<PodcastHost> get hosts => $_getList(3);
}

///
/// Used to stream audio data.
class ByteData extends $pb.GeneratedMessage {
  factory ByteData({
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  ByteData._() : super();
  factory ByteData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ByteData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ByteData', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ByteData clone() => ByteData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ByteData copyWith(void Function(ByteData) updates) => super.copyWith((message) => updates(message as ByteData)) as ByteData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ByteData create() => ByteData._();
  ByteData createEmptyInstance() => create();
  static $pb.PbList<ByteData> createRepeated() => $pb.PbList<ByteData>();
  @$core.pragma('dart2js:noInline')
  static ByteData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ByteData>(create);
  static ByteData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

///
/// Request object, used to request a new stream for a particular podcast episode.
class StreamPodcastRequest extends $pb.GeneratedMessage {
  factory StreamPodcastRequest({
    $core.int? podcastId,
    $core.int? episodeId,
  }) {
    final $result = create();
    if (podcastId != null) {
      $result.podcastId = podcastId;
    }
    if (episodeId != null) {
      $result.episodeId = episodeId;
    }
    return $result;
  }
  StreamPodcastRequest._() : super();
  factory StreamPodcastRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamPodcastRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamPodcastRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'podcastId', $pb.PbFieldType.O3, protoName: 'podcastId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'episodeId', $pb.PbFieldType.O3, protoName: 'episodeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamPodcastRequest clone() => StreamPodcastRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamPodcastRequest copyWith(void Function(StreamPodcastRequest) updates) => super.copyWith((message) => updates(message as StreamPodcastRequest)) as StreamPodcastRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamPodcastRequest create() => StreamPodcastRequest._();
  StreamPodcastRequest createEmptyInstance() => create();
  static $pb.PbList<StreamPodcastRequest> createRepeated() => $pb.PbList<StreamPodcastRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamPodcastRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamPodcastRequest>(create);
  static StreamPodcastRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get podcastId => $_getIZ(0);
  @$pb.TagNumber(1)
  set podcastId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodcastId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodcastId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get episodeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set episodeId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpisodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpisodeId() => clearField(2);
}

///
/// Request object, used to create a new podcast.
class CreatePodcastRequest extends $pb.GeneratedMessage {
  factory CreatePodcastRequest({
    $core.int? userId,
    Podcast? podcast,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (podcast != null) {
      $result.podcast = podcast;
    }
    return $result;
  }
  CreatePodcastRequest._() : super();
  factory CreatePodcastRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePodcastRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePodcastRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..aOM<Podcast>(2, _omitFieldNames ? '' : 'podcast', subBuilder: Podcast.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePodcastRequest clone() => CreatePodcastRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePodcastRequest copyWith(void Function(CreatePodcastRequest) updates) => super.copyWith((message) => updates(message as CreatePodcastRequest)) as CreatePodcastRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePodcastRequest create() => CreatePodcastRequest._();
  CreatePodcastRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePodcastRequest> createRepeated() => $pb.PbList<CreatePodcastRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePodcastRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePodcastRequest>(create);
  static CreatePodcastRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  Podcast get podcast => $_getN(1);
  @$pb.TagNumber(2)
  set podcast(Podcast v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPodcast() => $_has(1);
  @$pb.TagNumber(2)
  void clearPodcast() => clearField(2);
  @$pb.TagNumber(2)
  Podcast ensurePodcast() => $_ensure(1);
}

///
/// Request object, used to request the generation of a new episode.
class CreateEpisodeRequest extends $pb.GeneratedMessage {
  factory CreateEpisodeRequest({
    $core.int? userId,
    $core.int? podcastId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (podcastId != null) {
      $result.podcastId = podcastId;
    }
    return $result;
  }
  CreateEpisodeRequest._() : super();
  factory CreateEpisodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEpisodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateEpisodeRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'podcastId', $pb.PbFieldType.O3, protoName: 'podcastId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEpisodeRequest clone() => CreateEpisodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEpisodeRequest copyWith(void Function(CreateEpisodeRequest) updates) => super.copyWith((message) => updates(message as CreateEpisodeRequest)) as CreateEpisodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateEpisodeRequest create() => CreateEpisodeRequest._();
  CreateEpisodeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateEpisodeRequest> createRepeated() => $pb.PbList<CreateEpisodeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateEpisodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEpisodeRequest>(create);
  static CreateEpisodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get podcastId => $_getIZ(1);
  @$pb.TagNumber(2)
  set podcastId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPodcastId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPodcastId() => clearField(2);
}

///
/// Request object, used to request a list of a particular podcast's episodes.
class ListEpisodesRequest extends $pb.GeneratedMessage {
  factory ListEpisodesRequest({
    $core.int? userId,
    $core.int? podcastId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (podcastId != null) {
      $result.podcastId = podcastId;
    }
    return $result;
  }
  ListEpisodesRequest._() : super();
  factory ListEpisodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEpisodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListEpisodesRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'podcastId', $pb.PbFieldType.O3, protoName: 'podcastId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListEpisodesRequest clone() => ListEpisodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListEpisodesRequest copyWith(void Function(ListEpisodesRequest) updates) => super.copyWith((message) => updates(message as ListEpisodesRequest)) as ListEpisodesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEpisodesRequest create() => ListEpisodesRequest._();
  ListEpisodesRequest createEmptyInstance() => create();
  static $pb.PbList<ListEpisodesRequest> createRepeated() => $pb.PbList<ListEpisodesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEpisodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEpisodesRequest>(create);
  static ListEpisodesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get podcastId => $_getIZ(1);
  @$pb.TagNumber(2)
  set podcastId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPodcastId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPodcastId() => clearField(2);
}

///
/// Request object, used to request a list of a user's podcasts.
class ListPodcastsRequest extends $pb.GeneratedMessage {
  factory ListPodcastsRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  ListPodcastsRequest._() : super();
  factory ListPodcastsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPodcastsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPodcastsRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPodcastsRequest clone() => ListPodcastsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPodcastsRequest copyWith(void Function(ListPodcastsRequest) updates) => super.copyWith((message) => updates(message as ListPodcastsRequest)) as ListPodcastsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPodcastsRequest create() => ListPodcastsRequest._();
  ListPodcastsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPodcastsRequest> createRepeated() => $pb.PbList<ListPodcastsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPodcastsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPodcastsRequest>(create);
  static ListPodcastsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
