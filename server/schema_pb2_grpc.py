# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc
import warnings

import schema_pb2 as schema__pb2

GRPC_GENERATED_VERSION = '1.68.0'
GRPC_VERSION = grpc.__version__
_version_not_supported = False

try:
    from grpc._utilities import first_version_is_lower
    _version_not_supported = first_version_is_lower(GRPC_VERSION, GRPC_GENERATED_VERSION)
except ImportError:
    _version_not_supported = True

if _version_not_supported:
    raise RuntimeError(
        f'The grpc package installed is at version {GRPC_VERSION},'
        + f' but the generated code in schema_pb2_grpc.py depends on'
        + f' grpcio>={GRPC_GENERATED_VERSION}.'
        + f' Please upgrade your grpc module to grpcio>={GRPC_GENERATED_VERSION}'
        + f' or downgrade your generated code using grpcio-tools<={GRPC_VERSION}.'
    )


class PodcastServiceStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.GetPodcastList = channel.unary_unary(
                '/PodcastService/GetPodcastList',
                request_serializer=schema__pb2.User.SerializeToString,
                response_deserializer=schema__pb2.PodcastList.FromString,
                _registered_method=True)
        self.GetPodcastEpisodeList = channel.unary_unary(
                '/PodcastService/GetPodcastEpisodeList',
                request_serializer=schema__pb2.Podcast.SerializeToString,
                response_deserializer=schema__pb2.PodcastEpisodeList.FromString,
                _registered_method=True)
        self.StreamPodcast = channel.unary_stream(
                '/PodcastService/StreamPodcast',
                request_serializer=schema__pb2.StreamPodcastRequest.SerializeToString,
                response_deserializer=schema__pb2.PodcastAudio.FromString,
                _registered_method=True)
        self.SendPodcast = channel.unary_unary(
                '/PodcastService/SendPodcast',
                request_serializer=schema__pb2.StreamPodcastRequest.SerializeToString,
                response_deserializer=schema__pb2.PodcastAudio.FromString,
                _registered_method=True)
        self.NewPodcast = channel.unary_unary(
                '/PodcastService/NewPodcast',
                request_serializer=schema__pb2.Podcast.SerializeToString,
                response_deserializer=schema__pb2.Podcast.FromString,
                _registered_method=True)
        self.EditPodcast = channel.unary_unary(
                '/PodcastService/EditPodcast',
                request_serializer=schema__pb2.Podcast.SerializeToString,
                response_deserializer=schema__pb2.Podcast.FromString,
                _registered_method=True)
        self.DeletePodcast = channel.unary_unary(
                '/PodcastService/DeletePodcast',
                request_serializer=schema__pb2.Podcast.SerializeToString,
                response_deserializer=schema__pb2.Empty.FromString,
                _registered_method=True)


class PodcastServiceServicer(object):
    """Missing associated documentation comment in .proto file."""

    def GetPodcastList(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetPodcastEpisodeList(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def StreamPodcast(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def SendPodcast(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def NewPodcast(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def EditPodcast(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeletePodcast(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_PodcastServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'GetPodcastList': grpc.unary_unary_rpc_method_handler(
                    servicer.GetPodcastList,
                    request_deserializer=schema__pb2.User.FromString,
                    response_serializer=schema__pb2.PodcastList.SerializeToString,
            ),
            'GetPodcastEpisodeList': grpc.unary_unary_rpc_method_handler(
                    servicer.GetPodcastEpisodeList,
                    request_deserializer=schema__pb2.Podcast.FromString,
                    response_serializer=schema__pb2.PodcastEpisodeList.SerializeToString,
            ),
            'StreamPodcast': grpc.unary_stream_rpc_method_handler(
                    servicer.StreamPodcast,
                    request_deserializer=schema__pb2.StreamPodcastRequest.FromString,
                    response_serializer=schema__pb2.PodcastAudio.SerializeToString,
            ),
            'SendPodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.SendPodcast,
                    request_deserializer=schema__pb2.StreamPodcastRequest.FromString,
                    response_serializer=schema__pb2.PodcastAudio.SerializeToString,
            ),
            'NewPodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.NewPodcast,
                    request_deserializer=schema__pb2.Podcast.FromString,
                    response_serializer=schema__pb2.Podcast.SerializeToString,
            ),
            'EditPodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.EditPodcast,
                    request_deserializer=schema__pb2.Podcast.FromString,
                    response_serializer=schema__pb2.Podcast.SerializeToString,
            ),
            'DeletePodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.DeletePodcast,
                    request_deserializer=schema__pb2.Podcast.FromString,
                    response_serializer=schema__pb2.Empty.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'PodcastService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('PodcastService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class PodcastService(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def GetPodcastList(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/GetPodcastList',
            schema__pb2.User.SerializeToString,
            schema__pb2.PodcastList.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def GetPodcastEpisodeList(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/GetPodcastEpisodeList',
            schema__pb2.Podcast.SerializeToString,
            schema__pb2.PodcastEpisodeList.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def StreamPodcast(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_stream(
            request,
            target,
            '/PodcastService/StreamPodcast',
            schema__pb2.StreamPodcastRequest.SerializeToString,
            schema__pb2.PodcastAudio.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def SendPodcast(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/SendPodcast',
            schema__pb2.StreamPodcastRequest.SerializeToString,
            schema__pb2.PodcastAudio.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def NewPodcast(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/NewPodcast',
            schema__pb2.Podcast.SerializeToString,
            schema__pb2.Podcast.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def EditPodcast(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/EditPodcast',
            schema__pb2.Podcast.SerializeToString,
            schema__pb2.Podcast.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def DeletePodcast(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/PodcastService/DeletePodcast',
            schema__pb2.Podcast.SerializeToString,
            schema__pb2.Empty.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)


class UserServiceStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.RegisterUser = channel.unary_unary(
                '/UserService/RegisterUser',
                request_serializer=schema__pb2.User.SerializeToString,
                response_deserializer=schema__pb2.User.FromString,
                _registered_method=True)
        self.LoginUser = channel.unary_unary(
                '/UserService/LoginUser',
                request_serializer=schema__pb2.LoginRequest.SerializeToString,
                response_deserializer=schema__pb2.User.FromString,
                _registered_method=True)
        self.LogoutUser = channel.unary_unary(
                '/UserService/LogoutUser',
                request_serializer=schema__pb2.LogoutRequest.SerializeToString,
                response_deserializer=schema__pb2.Empty.FromString,
                _registered_method=True)


class UserServiceServicer(object):
    """Missing associated documentation comment in .proto file."""

    def RegisterUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def LoginUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def LogoutUser(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_UserServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'RegisterUser': grpc.unary_unary_rpc_method_handler(
                    servicer.RegisterUser,
                    request_deserializer=schema__pb2.User.FromString,
                    response_serializer=schema__pb2.User.SerializeToString,
            ),
            'LoginUser': grpc.unary_unary_rpc_method_handler(
                    servicer.LoginUser,
                    request_deserializer=schema__pb2.LoginRequest.FromString,
                    response_serializer=schema__pb2.User.SerializeToString,
            ),
            'LogoutUser': grpc.unary_unary_rpc_method_handler(
                    servicer.LogoutUser,
                    request_deserializer=schema__pb2.LogoutRequest.FromString,
                    response_serializer=schema__pb2.Empty.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'UserService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('UserService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class UserService(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def RegisterUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/UserService/RegisterUser',
            schema__pb2.User.SerializeToString,
            schema__pb2.User.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def LoginUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/UserService/LoginUser',
            schema__pb2.LoginRequest.SerializeToString,
            schema__pb2.User.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)

    @staticmethod
    def LogoutUser(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(
            request,
            target,
            '/UserService/LogoutUser',
            schema__pb2.LogoutRequest.SerializeToString,
            schema__pb2.Empty.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)
