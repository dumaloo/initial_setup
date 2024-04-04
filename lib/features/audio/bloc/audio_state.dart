part of 'audio_bloc.dart';

sealed class AudioState extends Equatable {
  @override
  List<Object> get props => [];
}

class AudioInitialState extends AudioState {}

class AudioPlayingState extends AudioState {}

class AudioPausedState extends AudioState {}

class AudioStoppedState extends AudioState {}

class AudioErrorState extends AudioState {
  final String message;

  AudioErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
