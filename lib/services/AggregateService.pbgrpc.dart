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

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'AggregateMessages.pb.dart' as $0;

export 'AggregateService.pb.dart';

@$pb.GrpcServiceName('AggregateService')
class AggregateServiceClient extends $grpc.Client {
  static final _$requestAggregate = $grpc.ClientMethod<$0.AggregateRequest, $0.ArticleData>(
      '/AggregateService/requestAggregate',
      ($0.AggregateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ArticleData.fromBuffer(value));

  AggregateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.ArticleData> requestAggregate($0.AggregateRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$requestAggregate, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('AggregateService')
abstract class AggregateServiceBase extends $grpc.Service {
  $core.String get $name => 'AggregateService';

  AggregateServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AggregateRequest, $0.ArticleData>(
        'requestAggregate',
        requestAggregate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.AggregateRequest.fromBuffer(value),
        ($0.ArticleData value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ArticleData> requestAggregate_Pre($grpc.ServiceCall call, $async.Future<$0.AggregateRequest> request) async* {
    yield* requestAggregate(call, await request);
  }

  $async.Stream<$0.ArticleData> requestAggregate($grpc.ServiceCall call, $0.AggregateRequest request);
}
