
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import "../services/schema.pb.dart";

@immutable
class PodcastsState extends Equatable {
 final int episodeId;
 final int podcastId;
 final bool newEpisode;
 final bool newPodcast;
 final List<Podcast> podcasts;
 final List<PodcastEpisode> podcastEpisodes;
 final AudioPlayer? player;
 
 // default state
 PodcastsState.empty() 
  : episodeId = -1, 
    podcastId = -1, 
    newEpisode = false, 
    newPodcast = false,
    podcasts = const[],
    podcastEpisodes = const[],
    player = AudioPlayer();
 
 // constructor
 const PodcastsState({
   required this.episodeId,
   required this.podcastId,
   required this.newEpisode,
   required this.newPodcast,
   required this.podcasts,
   required this.podcastEpisodes,
   required this.player,
 });
 
 @override
 List<Object> get props => [episodeId, podcastId, newEpisode, newPodcast, podcasts, podcastEpisodes];
}