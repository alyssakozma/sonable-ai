// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             (unknown)
// source: AIService.proto

package sonable_ai

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.64.0 or later.
const _ = grpc.SupportPackageIsVersion9

const (
	AIService_GeneratePodcast_FullMethodName = "/generated.AIService/generatePodcast"
)

// AIServiceClient is the client API for AIService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
//
// AI service handles generative text and audio, assembling them into a
// stream to be read by the service consumer.
type AIServiceClient interface {
	//
	//Request to generate an episode. Returns raw audio data.
	GeneratePodcast(ctx context.Context, in *GenerateEpisodeRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[ByteData], error)
}

type aIServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewAIServiceClient(cc grpc.ClientConnInterface) AIServiceClient {
	return &aIServiceClient{cc}
}

func (c *aIServiceClient) GeneratePodcast(ctx context.Context, in *GenerateEpisodeRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[ByteData], error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	stream, err := c.cc.NewStream(ctx, &AIService_ServiceDesc.Streams[0], AIService_GeneratePodcast_FullMethodName, cOpts...)
	if err != nil {
		return nil, err
	}
	x := &grpc.GenericClientStream[GenerateEpisodeRequest, ByteData]{ClientStream: stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type AIService_GeneratePodcastClient = grpc.ServerStreamingClient[ByteData]

// AIServiceServer is the server API for AIService service.
// All implementations must embed UnimplementedAIServiceServer
// for forward compatibility.
//
// AI service handles generative text and audio, assembling them into a
// stream to be read by the service consumer.
type AIServiceServer interface {
	//
	//Request to generate an episode. Returns raw audio data.
	GeneratePodcast(*GenerateEpisodeRequest, grpc.ServerStreamingServer[ByteData]) error
	mustEmbedUnimplementedAIServiceServer()
}

// UnimplementedAIServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedAIServiceServer struct{}

func (UnimplementedAIServiceServer) GeneratePodcast(*GenerateEpisodeRequest, grpc.ServerStreamingServer[ByteData]) error {
	return status.Errorf(codes.Unimplemented, "method GeneratePodcast not implemented")
}
func (UnimplementedAIServiceServer) mustEmbedUnimplementedAIServiceServer() {}
func (UnimplementedAIServiceServer) testEmbeddedByValue()                   {}

// UnsafeAIServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to AIServiceServer will
// result in compilation errors.
type UnsafeAIServiceServer interface {
	mustEmbedUnimplementedAIServiceServer()
}

func RegisterAIServiceServer(s grpc.ServiceRegistrar, srv AIServiceServer) {
	// If the following call pancis, it indicates UnimplementedAIServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&AIService_ServiceDesc, srv)
}

func _AIService_GeneratePodcast_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(GenerateEpisodeRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(AIServiceServer).GeneratePodcast(m, &grpc.GenericServerStream[GenerateEpisodeRequest, ByteData]{ServerStream: stream})
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type AIService_GeneratePodcastServer = grpc.ServerStreamingServer[ByteData]

// AIService_ServiceDesc is the grpc.ServiceDesc for AIService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var AIService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "generated.AIService",
	HandlerType: (*AIServiceServer)(nil),
	Methods:     []grpc.MethodDesc{},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "generatePodcast",
			Handler:       _AIService_GeneratePodcast_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "AIService.proto",
}