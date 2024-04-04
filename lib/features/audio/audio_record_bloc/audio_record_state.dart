part of 'audio_record_bloc.dart';

sealed class AudioRecordState extends Equatable {
  @override
  List<Object> get props => [];
}

class AudioRecordInitialState extends AudioRecordState {}

class AudioRecordInProgressState extends AudioRecordState {}

class AudioRecordStopState extends AudioRecordState {}

class AudioRecordErrorState extends AudioRecordState {
  final String message;

  AudioRecordErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class AudioRecordWaveformState extends AudioRecordState {
  final List<double> waveform;

  AudioRecordWaveformState({required this.waveform});

  @override
  List<Object> get props => [waveform];
}
