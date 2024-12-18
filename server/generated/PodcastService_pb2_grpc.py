# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

import Base_pb2 as Base__pb2
import PodcastMessages_pb2 as PodcastMessages__pb2


class PodcastServiceStub(object):
    """
    Podcast Service handles and stores podcasts.
    
    In order to generate a new podcast, it requests data from 
    the Aggregate service and sends it to the AI service. Then,
    Podcast service stores it + some metadata and returns to
    user.
    """

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.GetPodcastList = channel.unary_stream(
                '/generated.PodcastService/GetPodcastList',
                request_serializer=PodcastMessages__pb2.ListPodcastsRequest.SerializeToString,
                response_deserializer=PodcastMessages__pb2.Podcast.FromString,
                _registered_method=True)
        self.GetPodcastEpisodeList = channel.unary_stream(
                '/generated.PodcastService/GetPodcastEpisodeList',
                request_serializer=PodcastMessages__pb2.ListEpisodesRequest.SerializeToString,
                response_deserializer=PodcastMessages__pb2.PodcastEpisode.FromString,
                _registered_method=True)
        self.StreamPodcast = channel.unary_stream(
                '/generated.PodcastService/StreamPodcast',
                request_serializer=PodcastMessages__pb2.StreamPodcastRequest.SerializeToString,
                response_deserializer=PodcastMessages__pb2.ByteData.FromString,
                _registered_method=True)
        self.NewPodcast = channel.unary_unary(
                '/generated.PodcastService/NewPodcast',
                request_serializer=PodcastMessages__pb2.CreatePodcastRequest.SerializeToString,
                response_deserializer=PodcastMessages__pb2.Podcast.FromString,
                _registered_method=True)
        self.NewEpisode = channel.unary_unary(
                '/generated.PodcastService/NewEpisode',
                request_serializer=PodcastMessages__pb2.CreateEpisodeRequest.SerializeToString,
                response_deserializer=PodcastMessages__pb2.PodcastEpisode.FromString,
                _registered_method=True)
        self.EditPodcast = channel.unary_unary(
                '/generated.PodcastService/EditPodcast',
                request_serializer=PodcastMessages__pb2.Podcast.SerializeToString,
                response_deserializer=PodcastMessages__pb2.Podcast.FromString,
                _registered_method=True)
        self.DeletePodcast = channel.unary_unary(
                '/generated.PodcastService/DeletePodcast',
                request_serializer=PodcastMessages__pb2.Podcast.SerializeToString,
                response_deserializer=Base__pb2.Empty.FromString,
                _registered_method=True)
        self.HealthCheck = channel.unary_unary(
                '/generated.PodcastService/HealthCheck',
                request_serializer=Base__pb2.Empty.SerializeToString,
                response_deserializer=PodcastMessages__pb2.PodcastServiceHealthResponse.FromString,
                _registered_method=True)


class PodcastServiceServicer(object):
    """
    Podcast Service handles and stores podcasts.
    
    In order to generate a new podcast, it requests data from 
    the Aggregate service and sends it to the AI service. Then,
    Podcast service stores it + some metadata and returns to
    user.
    """

    def GetPodcastList(self, request, context):
        """
        Request a list of podcasts for a particular user.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def GetPodcastEpisodeList(self, request, context):
        """
        Request a list of episodes for a particular podcast.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def StreamPodcast(self, request, context):
        """
        Begin streaming a podcast episode.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def NewPodcast(self, request, context):
        """
        Create a new podcast.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def NewEpisode(self, request, context):
        """
        Create a new episode.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def EditPodcast(self, request, context):
        """
        Edit podcast parameters.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def DeletePodcast(self, request, context):
        """
        Delete a podcast.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')

    def HealthCheck(self, request, context):
        """
        Health check.
        """
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_PodcastServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'GetPodcastList': grpc.unary_stream_rpc_method_handler(
                    servicer.GetPodcastList,
                    request_deserializer=PodcastMessages__pb2.ListPodcastsRequest.FromString,
                    response_serializer=PodcastMessages__pb2.Podcast.SerializeToString,
            ),
            'GetPodcastEpisodeList': grpc.unary_stream_rpc_method_handler(
                    servicer.GetPodcastEpisodeList,
                    request_deserializer=PodcastMessages__pb2.ListEpisodesRequest.FromString,
                    response_serializer=PodcastMessages__pb2.PodcastEpisode.SerializeToString,
            ),
            'StreamPodcast': grpc.unary_stream_rpc_method_handler(
                    servicer.StreamPodcast,
                    request_deserializer=PodcastMessages__pb2.StreamPodcastRequest.FromString,
                    response_serializer=PodcastMessages__pb2.ByteData.SerializeToString,
            ),
            'NewPodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.NewPodcast,
                    request_deserializer=PodcastMessages__pb2.CreatePodcastRequest.FromString,
                    response_serializer=PodcastMessages__pb2.Podcast.SerializeToString,
            ),
            'NewEpisode': grpc.unary_unary_rpc_method_handler(
                    servicer.NewEpisode,
                    request_deserializer=PodcastMessages__pb2.CreateEpisodeRequest.FromString,
                    response_serializer=PodcastMessages__pb2.PodcastEpisode.SerializeToString,
            ),
            'EditPodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.EditPodcast,
                    request_deserializer=PodcastMessages__pb2.Podcast.FromString,
                    response_serializer=PodcastMessages__pb2.Podcast.SerializeToString,
            ),
            'DeletePodcast': grpc.unary_unary_rpc_method_handler(
                    servicer.DeletePodcast,
                    request_deserializer=PodcastMessages__pb2.Podcast.FromString,
                    response_serializer=Base__pb2.Empty.SerializeToString,
            ),
            'HealthCheck': grpc.unary_unary_rpc_method_handler(
                    servicer.HealthCheck,
                    request_deserializer=Base__pb2.Empty.FromString,
                    response_serializer=PodcastMessages__pb2.PodcastServiceHealthResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'generated.PodcastService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))
    server.add_registered_method_handlers('generated.PodcastService', rpc_method_handlers)


 # This class is part of an EXPERIMENTAL API.
class PodcastService(object):
    """
    Podcast Service handles and stores podcasts.
    
    In order to generate a new podcast, it requests data from 
    the Aggregate service and sends it to the AI service. Then,
    Podcast service stores it + some metadata and returns to
    user.
    """

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
        return grpc.experimental.unary_stream(
            request,
            target,
            '/generated.PodcastService/GetPodcastList',
            PodcastMessages__pb2.ListPodcastsRequest.SerializeToString,
            PodcastMessages__pb2.Podcast.FromString,
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
        return grpc.experimental.unary_stream(
            request,
            target,
            '/generated.PodcastService/GetPodcastEpisodeList',
            PodcastMessages__pb2.ListEpisodesRequest.SerializeToString,
            PodcastMessages__pb2.PodcastEpisode.FromString,
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
            '/generated.PodcastService/StreamPodcast',
            PodcastMessages__pb2.StreamPodcastRequest.SerializeToString,
            PodcastMessages__pb2.ByteData.FromString,
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
            '/generated.PodcastService/NewPodcast',
            PodcastMessages__pb2.CreatePodcastRequest.SerializeToString,
            PodcastMessages__pb2.Podcast.FromString,
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
    def NewEpisode(request,
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
            '/generated.PodcastService/NewEpisode',
            PodcastMessages__pb2.CreateEpisodeRequest.SerializeToString,
            PodcastMessages__pb2.PodcastEpisode.FromString,
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
            '/generated.PodcastService/EditPodcast',
            PodcastMessages__pb2.Podcast.SerializeToString,
            PodcastMessages__pb2.Podcast.FromString,
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
            '/generated.PodcastService/DeletePodcast',
            PodcastMessages__pb2.Podcast.SerializeToString,
            Base__pb2.Empty.FromString,
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
    def HealthCheck(request,
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
            '/generated.PodcastService/HealthCheck',
            Base__pb2.Empty.SerializeToString,
            PodcastMessages__pb2.PodcastServiceHealthResponse.FromString,
            options,
            channel_credentials,
            insecure,
            call_credentials,
            compression,
            wait_for_ready,
            timeout,
            metadata,
            _registered_method=True)
