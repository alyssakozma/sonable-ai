// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.35.2
// 	protoc        (unknown)
// source: PodcastMessages.proto

package generated

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

//
//Contains lots of data that will be used to personalize the voice and personalities of each host.
type PodcastHost struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id              int32  `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"` // for db storage
	Name            string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Gender          string `protobuf:"bytes,3,opt,name=gender,proto3" json:"gender,omitempty"`                   // describe your gender (or select it from some presets)
	VoiceTags       []*Tag `protobuf:"bytes,4,rep,name=voiceTags,proto3" json:"voiceTags,omitempty"`             // tags that affect speech characteristics
	PersonalityTags []*Tag `protobuf:"bytes,5,rep,name=personalityTags,proto3" json:"personalityTags,omitempty"` // tags that affect the personality of the host
}

func (x *PodcastHost) Reset() {
	*x = PodcastHost{}
	mi := &file_PodcastMessages_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *PodcastHost) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PodcastHost) ProtoMessage() {}

func (x *PodcastHost) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PodcastHost.ProtoReflect.Descriptor instead.
func (*PodcastHost) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{0}
}

func (x *PodcastHost) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *PodcastHost) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *PodcastHost) GetGender() string {
	if x != nil {
		return x.Gender
	}
	return ""
}

func (x *PodcastHost) GetVoiceTags() []*Tag {
	if x != nil {
		return x.VoiceTags
	}
	return nil
}

func (x *PodcastHost) GetPersonalityTags() []*Tag {
	if x != nil {
		return x.PersonalityTags
	}
	return nil
}

//
//A particular episode of a podcast.
type PodcastEpisode struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id      int32  `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`          // for db storage
	Name    string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`       // either generated or user defined
	Date    *Date  `protobuf:"bytes,3,opt,name=date,proto3" json:"date,omitempty"`       // date of generation
	Summary string `protobuf:"bytes,4,opt,name=summary,proto3" json:"summary,omitempty"` // summary of what is discussed in this episode
}

func (x *PodcastEpisode) Reset() {
	*x = PodcastEpisode{}
	mi := &file_PodcastMessages_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *PodcastEpisode) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PodcastEpisode) ProtoMessage() {}

func (x *PodcastEpisode) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PodcastEpisode.ProtoReflect.Descriptor instead.
func (*PodcastEpisode) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{1}
}

func (x *PodcastEpisode) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *PodcastEpisode) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *PodcastEpisode) GetDate() *Date {
	if x != nil {
		return x.Date
	}
	return nil
}

func (x *PodcastEpisode) GetSummary() string {
	if x != nil {
		return x.Summary
	}
	return ""
}

//
//Holds higher level information about the podcast. Topics discussed, hosts, etc.
type Podcast struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id     int32          `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`        // for db storage
	Name   string         `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`     // either generated or user defined
	Topics []*Tag         `protobuf:"bytes,3,rep,name=topics,proto3" json:"topics,omitempty"` // topics discussed
	Hosts  []*PodcastHost `protobuf:"bytes,4,rep,name=hosts,proto3" json:"hosts,omitempty"`   // the hosts that will discuss
}

func (x *Podcast) Reset() {
	*x = Podcast{}
	mi := &file_PodcastMessages_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *Podcast) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Podcast) ProtoMessage() {}

func (x *Podcast) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Podcast.ProtoReflect.Descriptor instead.
func (*Podcast) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{2}
}

func (x *Podcast) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *Podcast) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Podcast) GetTopics() []*Tag {
	if x != nil {
		return x.Topics
	}
	return nil
}

func (x *Podcast) GetHosts() []*PodcastHost {
	if x != nil {
		return x.Hosts
	}
	return nil
}

//
//Used to stream audio data.
type ByteData struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Data []byte `protobuf:"bytes,1,opt,name=data,proto3" json:"data,omitempty"` //nom nom
}

func (x *ByteData) Reset() {
	*x = ByteData{}
	mi := &file_PodcastMessages_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ByteData) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ByteData) ProtoMessage() {}

func (x *ByteData) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ByteData.ProtoReflect.Descriptor instead.
func (*ByteData) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{3}
}

func (x *ByteData) GetData() []byte {
	if x != nil {
		return x.Data
	}
	return nil
}

//
//Request object, used to request a new stream for a particular podcast episode.
type StreamPodcastRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PodcastId int32 `protobuf:"varint,1,opt,name=podcastId,proto3" json:"podcastId,omitempty"`
	EpisodeId int32 `protobuf:"varint,2,opt,name=episodeId,proto3" json:"episodeId,omitempty"`
}

func (x *StreamPodcastRequest) Reset() {
	*x = StreamPodcastRequest{}
	mi := &file_PodcastMessages_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *StreamPodcastRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*StreamPodcastRequest) ProtoMessage() {}

func (x *StreamPodcastRequest) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use StreamPodcastRequest.ProtoReflect.Descriptor instead.
func (*StreamPodcastRequest) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{4}
}

func (x *StreamPodcastRequest) GetPodcastId() int32 {
	if x != nil {
		return x.PodcastId
	}
	return 0
}

func (x *StreamPodcastRequest) GetEpisodeId() int32 {
	if x != nil {
		return x.EpisodeId
	}
	return 0
}

//
//Request object, used to create a new podcast.
type CreatePodcastRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId  int32    `protobuf:"varint,1,opt,name=userId,proto3" json:"userId,omitempty"`
	Podcast *Podcast `protobuf:"bytes,2,opt,name=podcast,proto3" json:"podcast,omitempty"`
}

func (x *CreatePodcastRequest) Reset() {
	*x = CreatePodcastRequest{}
	mi := &file_PodcastMessages_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CreatePodcastRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreatePodcastRequest) ProtoMessage() {}

func (x *CreatePodcastRequest) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreatePodcastRequest.ProtoReflect.Descriptor instead.
func (*CreatePodcastRequest) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{5}
}

func (x *CreatePodcastRequest) GetUserId() int32 {
	if x != nil {
		return x.UserId
	}
	return 0
}

func (x *CreatePodcastRequest) GetPodcast() *Podcast {
	if x != nil {
		return x.Podcast
	}
	return nil
}

//
//Request object, used to request the generation of a new episode.
type CreateEpisodeRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId    int32 `protobuf:"varint,1,opt,name=userId,proto3" json:"userId,omitempty"` // requesting user
	PodcastId int32 `protobuf:"varint,2,opt,name=podcastId,proto3" json:"podcastId,omitempty"`
}

func (x *CreateEpisodeRequest) Reset() {
	*x = CreateEpisodeRequest{}
	mi := &file_PodcastMessages_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CreateEpisodeRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateEpisodeRequest) ProtoMessage() {}

func (x *CreateEpisodeRequest) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateEpisodeRequest.ProtoReflect.Descriptor instead.
func (*CreateEpisodeRequest) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{6}
}

func (x *CreateEpisodeRequest) GetUserId() int32 {
	if x != nil {
		return x.UserId
	}
	return 0
}

func (x *CreateEpisodeRequest) GetPodcastId() int32 {
	if x != nil {
		return x.PodcastId
	}
	return 0
}

//
//Request object, used to request a list of a particular podcast's episodes.
type ListEpisodesRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId    int32 `protobuf:"varint,1,opt,name=userId,proto3" json:"userId,omitempty"` // requesting user
	PodcastId int32 `protobuf:"varint,2,opt,name=podcastId,proto3" json:"podcastId,omitempty"`
}

func (x *ListEpisodesRequest) Reset() {
	*x = ListEpisodesRequest{}
	mi := &file_PodcastMessages_proto_msgTypes[7]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ListEpisodesRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListEpisodesRequest) ProtoMessage() {}

func (x *ListEpisodesRequest) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[7]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListEpisodesRequest.ProtoReflect.Descriptor instead.
func (*ListEpisodesRequest) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{7}
}

func (x *ListEpisodesRequest) GetUserId() int32 {
	if x != nil {
		return x.UserId
	}
	return 0
}

func (x *ListEpisodesRequest) GetPodcastId() int32 {
	if x != nil {
		return x.PodcastId
	}
	return 0
}

//
//Request object, used to request a list of a user's podcasts.
type ListPodcastsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId int32 `protobuf:"varint,1,opt,name=userId,proto3" json:"userId,omitempty"`
}

func (x *ListPodcastsRequest) Reset() {
	*x = ListPodcastsRequest{}
	mi := &file_PodcastMessages_proto_msgTypes[8]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *ListPodcastsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListPodcastsRequest) ProtoMessage() {}

func (x *ListPodcastsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[8]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListPodcastsRequest.ProtoReflect.Descriptor instead.
func (*ListPodcastsRequest) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{8}
}

func (x *ListPodcastsRequest) GetUserId() int32 {
	if x != nil {
		return x.UserId
	}
	return 0
}

//
//Health response object.
type PodcastServiceHealthResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Status int32 `protobuf:"varint,1,opt,name=status,proto3" json:"status,omitempty"`
}

func (x *PodcastServiceHealthResponse) Reset() {
	*x = PodcastServiceHealthResponse{}
	mi := &file_PodcastMessages_proto_msgTypes[9]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *PodcastServiceHealthResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PodcastServiceHealthResponse) ProtoMessage() {}

func (x *PodcastServiceHealthResponse) ProtoReflect() protoreflect.Message {
	mi := &file_PodcastMessages_proto_msgTypes[9]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PodcastServiceHealthResponse.ProtoReflect.Descriptor instead.
func (*PodcastServiceHealthResponse) Descriptor() ([]byte, []int) {
	return file_PodcastMessages_proto_rawDescGZIP(), []int{9}
}

func (x *PodcastServiceHealthResponse) GetStatus() int32 {
	if x != nil {
		return x.Status
	}
	return 0
}

var File_PodcastMessages_proto protoreflect.FileDescriptor

var file_PodcastMessages_proto_rawDesc = []byte{
	0x0a, 0x15, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x09, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74,
	0x65, 0x64, 0x1a, 0x0a, 0x42, 0x61, 0x73, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xb1,
	0x01, 0x0a, 0x0b, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x48, 0x6f, 0x73, 0x74, 0x12, 0x0e,
	0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12,
	0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61,
	0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x67, 0x65, 0x6e, 0x64, 0x65, 0x72, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x06, 0x67, 0x65, 0x6e, 0x64, 0x65, 0x72, 0x12, 0x2c, 0x0a, 0x09, 0x76, 0x6f,
	0x69, 0x63, 0x65, 0x54, 0x61, 0x67, 0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0e, 0x2e,
	0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0x2e, 0x54, 0x61, 0x67, 0x52, 0x09, 0x76,
	0x6f, 0x69, 0x63, 0x65, 0x54, 0x61, 0x67, 0x73, 0x12, 0x38, 0x0a, 0x0f, 0x70, 0x65, 0x72, 0x73,
	0x6f, 0x6e, 0x61, 0x6c, 0x69, 0x74, 0x79, 0x54, 0x61, 0x67, 0x73, 0x18, 0x05, 0x20, 0x03, 0x28,
	0x0b, 0x32, 0x0e, 0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0x2e, 0x54, 0x61,
	0x67, 0x52, 0x0f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c, 0x69, 0x74, 0x79, 0x54, 0x61,
	0x67, 0x73, 0x22, 0x73, 0x0a, 0x0e, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x45, 0x70, 0x69,
	0x73, 0x6f, 0x64, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05,
	0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x23, 0x0a, 0x04, 0x64, 0x61, 0x74, 0x65,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74,
	0x65, 0x64, 0x2e, 0x44, 0x61, 0x74, 0x65, 0x52, 0x04, 0x64, 0x61, 0x74, 0x65, 0x12, 0x18, 0x0a,
	0x07, 0x73, 0x75, 0x6d, 0x6d, 0x61, 0x72, 0x79, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07,
	0x73, 0x75, 0x6d, 0x6d, 0x61, 0x72, 0x79, 0x22, 0x83, 0x01, 0x0a, 0x07, 0x50, 0x6f, 0x64, 0x63,
	0x61, 0x73, 0x74, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x26, 0x0a, 0x06, 0x74, 0x6f, 0x70, 0x69, 0x63,
	0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0e, 0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61,
	0x74, 0x65, 0x64, 0x2e, 0x54, 0x61, 0x67, 0x52, 0x06, 0x74, 0x6f, 0x70, 0x69, 0x63, 0x73, 0x12,
	0x2c, 0x0a, 0x05, 0x68, 0x6f, 0x73, 0x74, 0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x16,
	0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0x2e, 0x50, 0x6f, 0x64, 0x63, 0x61,
	0x73, 0x74, 0x48, 0x6f, 0x73, 0x74, 0x52, 0x05, 0x68, 0x6f, 0x73, 0x74, 0x73, 0x22, 0x1e, 0x0a,
	0x08, 0x42, 0x79, 0x74, 0x65, 0x44, 0x61, 0x74, 0x61, 0x12, 0x12, 0x0a, 0x04, 0x64, 0x61, 0x74,
	0x61, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x04, 0x64, 0x61, 0x74, 0x61, 0x22, 0x52, 0x0a,
	0x14, 0x53, 0x74, 0x72, 0x65, 0x61, 0x6d, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1c, 0x0a, 0x09, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74,
	0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73,
	0x74, 0x49, 0x64, 0x12, 0x1c, 0x0a, 0x09, 0x65, 0x70, 0x69, 0x73, 0x6f, 0x64, 0x65, 0x49, 0x64,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x65, 0x70, 0x69, 0x73, 0x6f, 0x64, 0x65, 0x49,
	0x64, 0x22, 0x5c, 0x0a, 0x14, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x6f, 0x64, 0x63, 0x61,
	0x73, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65,
	0x72, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49,
	0x64, 0x12, 0x2c, 0x0a, 0x07, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x12, 0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0x2e, 0x50,
	0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x52, 0x07, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x22,
	0x4c, 0x0a, 0x14, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x45, 0x70, 0x69, 0x73, 0x6f, 0x64, 0x65,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12,
	0x1c, 0x0a, 0x09, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x05, 0x52, 0x09, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x64, 0x22, 0x4b, 0x0a,
	0x13, 0x4c, 0x69, 0x73, 0x74, 0x45, 0x70, 0x69, 0x73, 0x6f, 0x64, 0x65, 0x73, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x1c, 0x0a, 0x09,
	0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x09, 0x70, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x49, 0x64, 0x22, 0x2d, 0x0a, 0x13, 0x4c, 0x69,
	0x73, 0x74, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x05, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x22, 0x36, 0x0a, 0x1c, 0x50, 0x6f, 0x64,
	0x63, 0x61, 0x73, 0x74, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x48, 0x65, 0x61, 0x6c, 0x74,
	0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x74, 0x61,
	0x74, 0x75, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x73, 0x74, 0x61, 0x74, 0x75,
	0x73, 0x42, 0x96, 0x01, 0x0a, 0x0d, 0x63, 0x6f, 0x6d, 0x2e, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61,
	0x74, 0x65, 0x64, 0x42, 0x14, 0x50, 0x6f, 0x64, 0x63, 0x61, 0x73, 0x74, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x73, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x2b, 0x67, 0x69, 0x74,
	0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x61, 0x6c, 0x79, 0x73, 0x73, 0x61, 0x6b, 0x6f,
	0x7a, 0x6d, 0x61, 0x2f, 0x73, 0x6f, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x2d, 0x61, 0x69, 0x2f, 0x67,
	0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0xa2, 0x02, 0x03, 0x47, 0x58, 0x58, 0xaa, 0x02,
	0x09, 0x47, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0xca, 0x02, 0x09, 0x47, 0x65, 0x6e,
	0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0xe2, 0x02, 0x15, 0x47, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74,
	0x65, 0x64, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74, 0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02,
	0x09, 0x47, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65, 0x64, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x33,
}

var (
	file_PodcastMessages_proto_rawDescOnce sync.Once
	file_PodcastMessages_proto_rawDescData = file_PodcastMessages_proto_rawDesc
)

func file_PodcastMessages_proto_rawDescGZIP() []byte {
	file_PodcastMessages_proto_rawDescOnce.Do(func() {
		file_PodcastMessages_proto_rawDescData = protoimpl.X.CompressGZIP(file_PodcastMessages_proto_rawDescData)
	})
	return file_PodcastMessages_proto_rawDescData
}

var file_PodcastMessages_proto_msgTypes = make([]protoimpl.MessageInfo, 10)
var file_PodcastMessages_proto_goTypes = []any{
	(*PodcastHost)(nil),                  // 0: generated.PodcastHost
	(*PodcastEpisode)(nil),               // 1: generated.PodcastEpisode
	(*Podcast)(nil),                      // 2: generated.Podcast
	(*ByteData)(nil),                     // 3: generated.ByteData
	(*StreamPodcastRequest)(nil),         // 4: generated.StreamPodcastRequest
	(*CreatePodcastRequest)(nil),         // 5: generated.CreatePodcastRequest
	(*CreateEpisodeRequest)(nil),         // 6: generated.CreateEpisodeRequest
	(*ListEpisodesRequest)(nil),          // 7: generated.ListEpisodesRequest
	(*ListPodcastsRequest)(nil),          // 8: generated.ListPodcastsRequest
	(*PodcastServiceHealthResponse)(nil), // 9: generated.PodcastServiceHealthResponse
	(*Tag)(nil),                          // 10: generated.Tag
	(*Date)(nil),                         // 11: generated.Date
}
var file_PodcastMessages_proto_depIdxs = []int32{
	10, // 0: generated.PodcastHost.voiceTags:type_name -> generated.Tag
	10, // 1: generated.PodcastHost.personalityTags:type_name -> generated.Tag
	11, // 2: generated.PodcastEpisode.date:type_name -> generated.Date
	10, // 3: generated.Podcast.topics:type_name -> generated.Tag
	0,  // 4: generated.Podcast.hosts:type_name -> generated.PodcastHost
	2,  // 5: generated.CreatePodcastRequest.podcast:type_name -> generated.Podcast
	6,  // [6:6] is the sub-list for method output_type
	6,  // [6:6] is the sub-list for method input_type
	6,  // [6:6] is the sub-list for extension type_name
	6,  // [6:6] is the sub-list for extension extendee
	0,  // [0:6] is the sub-list for field type_name
}

func init() { file_PodcastMessages_proto_init() }
func file_PodcastMessages_proto_init() {
	if File_PodcastMessages_proto != nil {
		return
	}
	file_Base_proto_init()
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_PodcastMessages_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   10,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_PodcastMessages_proto_goTypes,
		DependencyIndexes: file_PodcastMessages_proto_depIdxs,
		MessageInfos:      file_PodcastMessages_proto_msgTypes,
	}.Build()
	File_PodcastMessages_proto = out.File
	file_PodcastMessages_proto_rawDesc = nil
	file_PodcastMessages_proto_goTypes = nil
	file_PodcastMessages_proto_depIdxs = nil
}
