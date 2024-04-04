import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

part 'audio_event.dart';
part 'audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  AudioBloc() : super(AudioInitialState()) {
    on<PlayAudioEvent>((event, emit) async {
      try {
        audioPlayer.open(
          Audio.network(
              'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
        );
        audioPlayer.play();

        emit(AudioPlayingState());
        Logger().i('Audio playing');
      } catch (e) {
        emit(AudioErrorState(message: e.toString()));
        Logger().e('Failed to play audio: $e');
      }
    });

    on<PauseAudioEvent>((event, emit) async {
      audioPlayer.pause();
      emit(AudioPausedState());
      Logger().i('Audio paused');
    });

    on<StopAudioEvent>((event, emit) async {
      audioPlayer.stop();
      emit(AudioStoppedState());
      Logger().i('Audio stopped');
    });

    @override
    Future<void> close() {
      audioPlayer
          .dispose(); // Dispose of the audio player when the bloc is closed
      return super.close();
    }
  }
}
