package main

import (
	"context"
	"fmt"
	"log"
	"net/http"

	gw "github.com/alyssakozma/sonable-ai/generated"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func main() {
	podcastsServiceAddr := "localhost:50051"
	conn, err := grpc.NewClient(podcastsServiceAddr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Fatal("Could not reach podcasts service.", err)
	}
	defer conn.Close()
	mux := runtime.NewServeMux()
	if err = gw.RegisterPodcastServiceHandler(context.Background(), mux, conn); err != nil {
		log.Fatal("Failed to register podcasts service.", err)
	}

	addr := "0.0.0.0:8080"
	fmt.Println("API gateway is running on " + addr)
	if err = http.ListenAndServe(addr, mux); err != nil {
		log.Fatal(("Gateway server closed. Reason: "), err)
	}
}
