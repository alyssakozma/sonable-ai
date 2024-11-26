import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sonableai/bloc/podcasts_bloc.dart';
import 'package:sonableai/src/tabs/podcast_list_widget.dart';

class PodcastsTab extends StatelessWidget {
  const PodcastsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      BlocProvider(
        create: (BuildContext context) => PodcastsBloc(),
        child: const PodcastListWidget()
      )
    );
  }
}