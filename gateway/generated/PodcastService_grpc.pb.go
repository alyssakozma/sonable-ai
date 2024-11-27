// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             (unknown)
// source: PodcastService.proto

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
	PodcastService_GetPodcastList_FullMethodName        = "/generated.PodcastService/GetPodcastList"
	PodcastService_GetPodcastEpisodeList_FullMethodName = "/generated.PodcastService/GetPodcastEpisodeList"
	PodcastService_StreamPodcast_FullMethodName         = "/generated.PodcastService/StreamPodcast"
	PodcastService_NewPodcast_FullMethodName            = "/generated.PodcastService/NewPodcast"
	PodcastService_NewEpisode_FullMethodName            = "/generated.PodcastService/NewEpisode"
	PodcastService_EditPodcast_FullMethodName           = "/generated.PodcastService/EditPodcast"
	PodcastService_DeletePodcast_FullMethodName         = "/generated.PodcastService/DeletePodcast"
)

// PodcastServiceClient is the client API for PodcastService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
//
// Podcast Service handles and stores podcasts.
//
// In order to generate a new podcast, it requests data from
// the Aggregate service and sends it to the AI service. Then,
// Podcast service stores it + some metadata and returns to
// user.
type PodcastServiceClient interface {
	//
	//Request a list of podcasts for a particular user.
	GetPodcastList(ctx context.Context, in *ListPodcastsRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[Podcast], error)
	//
	//Request a list of episodes for a particular podcast.
	GetPodcastEpisodeList(ctx context.Context, in *ListEpisodesRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[PodcastEpisode], error)
	//
	//Begin streaming a podcast episode.
	StreamPodcast(ctx context.Context, in *StreamPodcastRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[ByteData], error)
	//
	//Create a new podcast.
	NewPodcast(ctx context.Context, in *CreatePodcastRequest, opts ...grpc.CallOption) (*Podcast, error)
	//
	//Create a new episode.
	NewEpisode(ctx context.Context, in *CreateEpisodeRequest, opts ...grpc.CallOption) (*PodcastEpisode, error)
	//
	//Edit podcast parameters.
	EditPodcast(ctx context.Context, in *Podcast, opts ...grpc.CallOption) (*Podcast, error)
	//
	//Delete a podcast.
	DeletePodcast(ctx context.Context, in *Podcast, opts ...grpc.CallOption) (*Empty, error)
}

type podcastServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPodcastServiceClient(cc grpc.ClientConnInterface) PodcastServiceClient {
	return &podcastServiceClient{cc}
}

func (c *podcastServiceClient) GetPodcastList(ctx context.Context, in *ListPodcastsRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[Podcast], error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	stream, err := c.cc.NewStream(ctx, &PodcastService_ServiceDesc.Streams[0], PodcastService_GetPodcastList_FullMethodName, cOpts...)
	if err != nil {
		return nil, err
	}
	x := &grpc.GenericClientStream[ListPodcastsRequest, Podcast]{ClientStream: stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_GetPodcastListClient = grpc.ServerStreamingClient[Podcast]

func (c *podcastServiceClient) GetPodcastEpisodeList(ctx context.Context, in *ListEpisodesRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[PodcastEpisode], error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	stream, err := c.cc.NewStream(ctx, &PodcastService_ServiceDesc.Streams[1], PodcastService_GetPodcastEpisodeList_FullMethodName, cOpts...)
	if err != nil {
		return nil, err
	}
	x := &grpc.GenericClientStream[ListEpisodesRequest, PodcastEpisode]{ClientStream: stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_GetPodcastEpisodeListClient = grpc.ServerStreamingClient[PodcastEpisode]

func (c *podcastServiceClient) StreamPodcast(ctx context.Context, in *StreamPodcastRequest, opts ...grpc.CallOption) (grpc.ServerStreamingClient[ByteData], error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	stream, err := c.cc.NewStream(ctx, &PodcastService_ServiceDesc.Streams[2], PodcastService_StreamPodcast_FullMethodName, cOpts...)
	if err != nil {
		return nil, err
	}
	x := &grpc.GenericClientStream[StreamPodcastRequest, ByteData]{ClientStream: stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_StreamPodcastClient = grpc.ServerStreamingClient[ByteData]

func (c *podcastServiceClient) NewPodcast(ctx context.Context, in *CreatePodcastRequest, opts ...grpc.CallOption) (*Podcast, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(Podcast)
	err := c.cc.Invoke(ctx, PodcastService_NewPodcast_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *podcastServiceClient) NewEpisode(ctx context.Context, in *CreateEpisodeRequest, opts ...grpc.CallOption) (*PodcastEpisode, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(PodcastEpisode)
	err := c.cc.Invoke(ctx, PodcastService_NewEpisode_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *podcastServiceClient) EditPodcast(ctx context.Context, in *Podcast, opts ...grpc.CallOption) (*Podcast, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(Podcast)
	err := c.cc.Invoke(ctx, PodcastService_EditPodcast_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *podcastServiceClient) DeletePodcast(ctx context.Context, in *Podcast, opts ...grpc.CallOption) (*Empty, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(Empty)
	err := c.cc.Invoke(ctx, PodcastService_DeletePodcast_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// PodcastServiceServer is the server API for PodcastService service.
// All implementations must embed UnimplementedPodcastServiceServer
// for forward compatibility.
//
// Podcast Service handles and stores podcasts.
//
// In order to generate a new podcast, it requests data from
// the Aggregate service and sends it to the AI service. Then,
// Podcast service stores it + some metadata and returns to
// user.
type PodcastServiceServer interface {
	//
	//Request a list of podcasts for a particular user.
	GetPodcastList(*ListPodcastsRequest, grpc.ServerStreamingServer[Podcast]) error
	//
	//Request a list of episodes for a particular podcast.
	GetPodcastEpisodeList(*ListEpisodesRequest, grpc.ServerStreamingServer[PodcastEpisode]) error
	//
	//Begin streaming a podcast episode.
	StreamPodcast(*StreamPodcastRequest, grpc.ServerStreamingServer[ByteData]) error
	//
	//Create a new podcast.
	NewPodcast(context.Context, *CreatePodcastRequest) (*Podcast, error)
	//
	//Create a new episode.
	NewEpisode(context.Context, *CreateEpisodeRequest) (*PodcastEpisode, error)
	//
	//Edit podcast parameters.
	EditPodcast(context.Context, *Podcast) (*Podcast, error)
	//
	//Delete a podcast.
	DeletePodcast(context.Context, *Podcast) (*Empty, error)
	mustEmbedUnimplementedPodcastServiceServer()
}

// UnimplementedPodcastServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedPodcastServiceServer struct{}

func (UnimplementedPodcastServiceServer) GetPodcastList(*ListPodcastsRequest, grpc.ServerStreamingServer[Podcast]) error {
	return status.Errorf(codes.Unimplemented, "method GetPodcastList not implemented")
}
func (UnimplementedPodcastServiceServer) GetPodcastEpisodeList(*ListEpisodesRequest, grpc.ServerStreamingServer[PodcastEpisode]) error {
	return status.Errorf(codes.Unimplemented, "method GetPodcastEpisodeList not implemented")
}
func (UnimplementedPodcastServiceServer) StreamPodcast(*StreamPodcastRequest, grpc.ServerStreamingServer[ByteData]) error {
	return status.Errorf(codes.Unimplemented, "method StreamPodcast not implemented")
}
func (UnimplementedPodcastServiceServer) NewPodcast(context.Context, *CreatePodcastRequest) (*Podcast, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NewPodcast not implemented")
}
func (UnimplementedPodcastServiceServer) NewEpisode(context.Context, *CreateEpisodeRequest) (*PodcastEpisode, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NewEpisode not implemented")
}
func (UnimplementedPodcastServiceServer) EditPodcast(context.Context, *Podcast) (*Podcast, error) {
	return nil, status.Errorf(codes.Unimplemented, "method EditPodcast not implemented")
}
func (UnimplementedPodcastServiceServer) DeletePodcast(context.Context, *Podcast) (*Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeletePodcast not implemented")
}
func (UnimplementedPodcastServiceServer) mustEmbedUnimplementedPodcastServiceServer() {}
func (UnimplementedPodcastServiceServer) testEmbeddedByValue()                        {}

// UnsafePodcastServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PodcastServiceServer will
// result in compilation errors.
type UnsafePodcastServiceServer interface {
	mustEmbedUnimplementedPodcastServiceServer()
}

func RegisterPodcastServiceServer(s grpc.ServiceRegistrar, srv PodcastServiceServer) {
	// If the following call pancis, it indicates UnimplementedPodcastServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&PodcastService_ServiceDesc, srv)
}

func _PodcastService_GetPodcastList_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListPodcastsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PodcastServiceServer).GetPodcastList(m, &grpc.GenericServerStream[ListPodcastsRequest, Podcast]{ServerStream: stream})
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_GetPodcastListServer = grpc.ServerStreamingServer[Podcast]

func _PodcastService_GetPodcastEpisodeList_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListEpisodesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PodcastServiceServer).GetPodcastEpisodeList(m, &grpc.GenericServerStream[ListEpisodesRequest, PodcastEpisode]{ServerStream: stream})
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_GetPodcastEpisodeListServer = grpc.ServerStreamingServer[PodcastEpisode]

func _PodcastService_StreamPodcast_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(StreamPodcastRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PodcastServiceServer).StreamPodcast(m, &grpc.GenericServerStream[StreamPodcastRequest, ByteData]{ServerStream: stream})
}

// This type alias is provided for backwards compatibility with existing code that references the prior non-generic stream type by name.
type PodcastService_StreamPodcastServer = grpc.ServerStreamingServer[ByteData]

func _PodcastService_NewPodcast_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreatePodcastRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PodcastServiceServer).NewPodcast(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PodcastService_NewPodcast_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PodcastServiceServer).NewPodcast(ctx, req.(*CreatePodcastRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PodcastService_NewEpisode_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateEpisodeRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PodcastServiceServer).NewEpisode(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PodcastService_NewEpisode_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PodcastServiceServer).NewEpisode(ctx, req.(*CreateEpisodeRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PodcastService_EditPodcast_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Podcast)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PodcastServiceServer).EditPodcast(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PodcastService_EditPodcast_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PodcastServiceServer).EditPodcast(ctx, req.(*Podcast))
	}
	return interceptor(ctx, in, info, handler)
}

func _PodcastService_DeletePodcast_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Podcast)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PodcastServiceServer).DeletePodcast(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: PodcastService_DeletePodcast_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PodcastServiceServer).DeletePodcast(ctx, req.(*Podcast))
	}
	return interceptor(ctx, in, info, handler)
}

// PodcastService_ServiceDesc is the grpc.ServiceDesc for PodcastService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PodcastService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "generated.PodcastService",
	HandlerType: (*PodcastServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "NewPodcast",
			Handler:    _PodcastService_NewPodcast_Handler,
		},
		{
			MethodName: "NewEpisode",
			Handler:    _PodcastService_NewEpisode_Handler,
		},
		{
			MethodName: "EditPodcast",
			Handler:    _PodcastService_EditPodcast_Handler,
		},
		{
			MethodName: "DeletePodcast",
			Handler:    _PodcastService_DeletePodcast_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetPodcastList",
			Handler:       _PodcastService_GetPodcastList_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "GetPodcastEpisodeList",
			Handler:       _PodcastService_GetPodcastEpisodeList_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "StreamPodcast",
			Handler:       _PodcastService_StreamPodcast_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "PodcastService.proto",
}