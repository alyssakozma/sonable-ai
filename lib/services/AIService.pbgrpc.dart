//
//  Generated code. Do not modify.
//  source: AIService.proto
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

import 'AIMessages.pb.dart' as $0;
import 'PodcastMessages.pb.dart' as $1;

export 'AIService.pb.dart';

@$pb.GrpcServiceName('generated.AIService')
class AIServiceClient extends $grpc.Client {
  static final _$generatePodcast = $grpc.ClientMethod<$0.GenerateEpisodeRequest, $1.ByteData>(
      '/generated.AIService/generatePodcast',
      ($0.GenerateEpisodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ByteData.fromBuffer(value));

  AIServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$1.ByteData> generatePodcast($0.GenerateEpisodeRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$generatePodcast, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('generated.AIService')
abstract class AIServiceBase extends $grpc.Service {
  $core.String get $name => 'generated.AIService';

  AIServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GenerateEpisodeRequest, $1.ByteData>(
        'generatePodcast',
        generatePodcast_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GenerateEpisodeRequest.fromBuffer(value),
        ($1.ByteData value) => value.writeToBuffer()));
  }

  $async.Stream<$1.ByteData> generatePodcast_Pre($grpc.ServiceCall call, $async.Future<$0.GenerateEpisodeRequest> request) async* {
    yield* generatePodcast(call, await request);
  }

  $async.Stream<$1.ByteData> generatePodcast($grpc.ServiceCall call, $0.GenerateEpisodeRequest request);
}
