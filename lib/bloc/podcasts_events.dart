import 'package:flutter/material.dart';

@immutable
abstract class PodcastsBlocEvent {
  const PodcastsBlocEvent();
}
 
@immutable
class LoadPodcastsEvent extends PodcastsBlocEvent {
  const LoadPodcastsEvent();
}

@immutable
class LoadEpisodesEvent extends PodcastsBlocEvent {
  final int id;
  const LoadEpisodesEvent({required this.id});
}

class PlayEpisodeEvent extends PodcastsBlocEvent {
  const PlayEpisodeEvent();
}