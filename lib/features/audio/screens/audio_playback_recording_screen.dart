import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initial_setup/features/audio/bloc/audio_bloc.dart';

class AudioPlaybackRecorderScreen extends StatefulWidget {
  const AudioPlaybackRecorderScreen({super.key});

  @override
  State<AudioPlaybackRecorderScreen> createState() =>
      _AudioPlaybackRecorderScreenState();
}

class _AudioPlaybackRecorderScreenState
    extends State<AudioPlaybackRecorderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Audio Playback Recorder'),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<AudioBloc>(context).add(PlayAudioEvent());
            },
            child: const Text('Play Audio'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<AudioBloc>(context).add(PauseAudioEvent());
            },
            child: const Text('Pause Audio'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<AudioBloc>(context).add(StopAudioEvent());
            },
            child: const Text('Stop Audio'),
          ),
        ],
      ),
    );
  }
}
