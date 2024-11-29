module github.com/alyssakozma/sonable-ai

go 1.23.3

require (
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.22.0
	//google.golang.org/genproto v0.0.0-20200513103714-09dca8ec2884
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240903143218-8af14fe29dc1 // indirect
	google.golang.org/grpc v1.68.0
	google.golang.org/protobuf v1.35.2
)

require google.golang.org/genproto/googleapis/api v0.0.0-20240903143218-8af14fe29dc1

require (
	golang.org/x/net v0.29.0 // indirect
	golang.org/x/sys v0.25.0 // indirect
	golang.org/x/text v0.20.0 // indirect
)
