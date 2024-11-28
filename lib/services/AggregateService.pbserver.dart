//
//  Generated code. Do not modify.
//  source: AggregateService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AggregateMessages.pb.dart' as $1;
import 'AggregateService.pbjson.dart';

export 'AggregateService.pb.dart';

abstract class AggregateServiceBase extends $pb.GeneratedService {
  $async.Future<$1.ArticleData> requestAggregate($pb.ServerContext ctx, $1.AggregateRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'requestAggregate': return $1.AggregateRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'requestAggregate': return this.requestAggregate(ctx, request as $1.AggregateRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AggregateServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AggregateServiceBase$messageJson;
}
