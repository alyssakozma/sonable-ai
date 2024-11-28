//
//  Generated code. Do not modify.
//  source: AggregateService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AggregateMessages.pb.dart' as $1;

class AggregateServiceApi {
  $pb.RpcClient _client;
  AggregateServiceApi(this._client);

  $async.Future<$1.ArticleData> requestAggregate($pb.ClientContext? ctx, $1.AggregateRequest request) =>
    _client.invoke<$1.ArticleData>(ctx, 'AggregateService', 'requestAggregate', request, $1.ArticleData())
  ;
}

