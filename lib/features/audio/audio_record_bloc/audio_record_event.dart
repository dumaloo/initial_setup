part of 'audio_record_bloc.dart';

sealed class AudioRecordEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class StartRecordingEvent extends AudioRecordEvent {
  final String path;

  StartRecordingEvent({required this.path});

  @override
  List<Object> get props => [path];
}

class StopRecordingEvent extends AudioRecordEvent {
  final String path;

  StopRecordingEvent({required this.path});

  @override
  List<Object> get props => [path];
}

class UpdateWaveformEvent extends AudioRecordEvent {
  final List<double> waveform;

  UpdateWaveformEvent({required this.waveform});

  @override
  List<Object> get props => [waveform];
}
