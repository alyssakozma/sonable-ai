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

import 'AIMessages.pb.dart' as $1;
import 'PodcastMessages.pb.dart' as $2;

export 'AIService.pb.dart';

@$pb.GrpcServiceName('AIService')
class AIServiceClient extends $grpc.Client {
  static final _$generatePodcast = $grpc.ClientMethod<$1.GenerateEpisodeRequest, $2.ByteData>(
      '/AIService/generatePodcast',
      ($1.GenerateEpisodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ByteData.fromBuffer(value));

  AIServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$2.ByteData> generatePodcast($1.GenerateEpisodeRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$generatePodcast, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('AIService')
abstract class AIServiceBase extends $grpc.Service {
  $core.String get $name => 'AIService';

  AIServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GenerateEpisodeRequest, $2.ByteData>(
        'generatePodcast',
        generatePodcast_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.GenerateEpisodeRequest.fromBuffer(value),
        ($2.ByteData value) => value.writeToBuffer()));
  }

  $async.Stream<$2.ByteData> generatePodcast_Pre($grpc.ServiceCall call, $async.Future<$1.GenerateEpisodeRequest> request) async* {
    yield* generatePodcast(call, await request);
  }

  $async.Stream<$2.ByteData> generatePodcast($grpc.ServiceCall call, $1.GenerateEpisodeRequest request);
}
