# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# NO CHECKED-IN PROTOBUF GENCODE
# source: AIService.proto
# Protobuf Python Version: 5.28.3
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import runtime_version as _runtime_version
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
_runtime_version.ValidateProtobufRuntimeVersion(
    _runtime_version.Domain.PUBLIC,
    5,
    28,
    3,
    '',
    'AIService.proto'
)
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


import AIMessages_pb2 as AIMessages__pb2
import PodcastMessages_pb2 as PodcastMessages__pb2
from google.api import annotations_pb2 as google_dot_api_dot_annotations__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x0f\x41IService.proto\x12\tgenerated\x1a\x10\x41IMessages.proto\x1a\x15PodcastMessages.proto\x1a\x1cgoogle/api/annotations.proto2\x82\x01\n\tAIService\x12u\n\x0fgeneratePodcast\x12!.generated.GenerateEpisodeRequest\x1a\x13.generated.ByteData\"(\x82\xd3\xe4\x93\x02\"\"\x1d/v1/aiService/generatePodcast:\x01*0\x01\x42\x90\x01\n\rcom.generatedB\x0e\x41IServiceProtoP\x01Z+github.com/alyssakozma/sonable-ai/generated\xa2\x02\x03GXX\xaa\x02\tGenerated\xca\x02\tGenerated\xe2\x02\x15Generated\\GPBMetadata\xea\x02\tGeneratedb\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'AIService_pb2', _globals)
if not _descriptor._USE_C_DESCRIPTORS:
  _globals['DESCRIPTOR']._loaded_options = None
  _globals['DESCRIPTOR']._serialized_options = b'\n\rcom.generatedB\016AIServiceProtoP\001Z+github.com/alyssakozma/sonable-ai/generated\242\002\003GXX\252\002\tGenerated\312\002\tGenerated\342\002\025Generated\\GPBMetadata\352\002\tGenerated'
  _globals['_AISERVICE'].methods_by_name['generatePodcast']._loaded_options = None
  _globals['_AISERVICE'].methods_by_name['generatePodcast']._serialized_options = b'\202\323\344\223\002\"\"\035/v1/aiService/generatePodcast:\001*'
  _globals['_AISERVICE']._serialized_start=102
  _globals['_AISERVICE']._serialized_end=232
# @@protoc_insertion_point(module_scope)
