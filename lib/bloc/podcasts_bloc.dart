import "package:flutter_bloc/flutter_bloc.dart";
import "package:just_audio/just_audio.dart";
import "package:sonableai/bloc/podcasts_events.dart";
import "package:sonableai/services/PodcastMessages.pb.dart";
import "package:sonableai/services/Base.pb.dart";
import "podcasts_state.dart";
import 'package:http/http.dart' as http;

const gatewayUrl = "192.168.68.60";
const gatewayPort = "8080";

class PodcastsBloc extends Bloc {
  PodcastsBloc() : super(PodcastsState.empty()) {
    on<HealthCheckEvent>((event, emit) async {
      final response = await 
        http.get(Uri.parse('http://$gatewayUrl:$gatewayPort/v1/podcasts/health'));
        if (response.statusCode == 200) {
          print(response.body);
        } else {
          print("ERROR");
        }
      });
    on<PlayEpisodeEvent>((event, emit) {
      /*
      final channel = ClientChannel('127.0.0.1',
        port: 50051,
        options: const ChannelOptions(
        credentials: ChannelCredentials.insecure())
      );
      PodcastServiceClient cli = PodcastServiceClient(channel);
      PodcastsState st = state;
      StreamPodcastRequest req = StreamPodcastRequest();
      Podcast pod = Podcast();
      req.episodeId = state.episodeId;
      req.podcast = pod;
      ResponseStream<PodcastAudio> stream = cli.streamPodcast(req);
      ByteData res = ByteData(100000);
      /*stream.listen((PodcastAudio audioChunk) {
        res += audioChunk.data;
        st.player
      })*/
      */
    });

    on<LoadEpisodesEvent>((event, emit) {
      //load episodes
      PodcastEpisode ep1 = PodcastEpisode();
      ep1.name = "Test1";
      ep1.date = Date(day: 11, month: 8, year: 2024);
      ep1.summary = "The Gang Goes To Ukraine";
      List<PodcastEpisode> tmpList = [
        ep1
      ];

      // update state
      emit(
        PodcastsState(
          podcastId: event.id,
          episodeId: state.episodeId,
          podcasts: state.podcasts,
          podcastEpisodes: tmpList,
          newEpisode: false,
          newPodcast: false,
          player: AudioPlayer(),
        )
      );
    });

    on<LoadPodcastsEvent>((event, emit) {
      try {
        //load podcasts for user
        Podcast testPodcast = Podcast();
        Podcast testPodcast2 = Podcast();
        testPodcast.name = "test";
        testPodcast2.name = "eeeee";
        List<Podcast> l = [
          testPodcast,
          testPodcast2,
        ];

        emit(
          PodcastsState(
            newEpisode: state.newEpisode,
            newPodcast: state.newPodcast,
            episodeId: state.episodeId,
            podcastId: state.podcastId,
            podcasts:List.from(l),
            podcastEpisodes: state.podcastEpisodes,
            player: state.player
          ),
        );
      } on Exception catch (e) {
        // ignore: avoid_print
        print(e);
      }
    });
  }
}