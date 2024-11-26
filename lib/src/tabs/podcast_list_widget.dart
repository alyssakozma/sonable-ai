import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonableai/bloc/podcasts_bloc.dart';
import 'package:sonableai/bloc/podcasts_events.dart';
import 'package:sonableai/bloc/podcasts_state.dart';
import 'package:sonableai/services/schema.pb.dart';

class PodcastListWidget extends StatelessWidget {
  const PodcastListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //final ThemeData theme = Theme.of(context);
    PodcastsBloc bloc = BlocProvider.of<PodcastsBloc>(context);
    //PodcastsState state = BlocProvider.of<PodcastsBloc>(context).state;

    // temporary placeholder data -- awaiting grpc impl
    List<Podcast> tempArray = [
      Podcast(name: "test", hosts: [], topics: []),
      Podcast(name: "test2", hosts: [], topics: []),
    ];

    // listen for podcast selection to show episode selection dialog
    bloc.stream.listen((state) {
      PodcastsState s = state;
      if (s.podcastId != -1) {
        // ignore: use_build_context_synchronously
        episodesDialog(context, s.podcastEpisodes);
      }
    });

    return (
      ListView.builder(
        itemCount: tempArray.length,
        //itemCount: state.podcasts.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              bloc.add(LoadEpisodesEvent(id: index));
            },
            child: Center(
              child: Card(
                child: Column (
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.podcasts),
                      title: Text(tempArray[index].name),
                      //subtitle: Text(tempArray[index].summary)
                    ),
                  ]
                )
              )
            )
          );
        },
      ) 
    );
  }

  Future<void> episodesDialog(BuildContext context, List<PodcastEpisode> eps) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Episodes"),
          content: ListView.builder(
            itemCount: eps.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Card(
                  child: Column (
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.play_circle_fill),
                        title: Text(eps[index].name),
                        subtitle: Text(eps[index].summary)
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text("Listen"),
                            onPressed: () {
                              //listen
                            }
                          ),
                          TextButton(child: const Text("Info"), onPressed: () { /*info page*/ })
                        ]
                      )
                    ]
                  )
                )
              );
            },
          )
        );
      },
    );
  } 
}