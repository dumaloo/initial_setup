// import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

part 'audio_record_event.dart';
part 'audio_record_state.dart';

class AudioRecordBloc extends Bloc<AudioRecordEvent, AudioRecordState> {
  // late final RecorderController recorderController;

  AudioRecordBloc() : super(AudioRecordInitialState()) {
    //   recorderController = RecorderController()
    //     ..androidEncoder = AndroidEncoder.aac
    //     ..androidOutputFormat = AndroidOutputFormat.mpeg4
    //     ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
    //     ..sampleRate = 44100;

    on<StartRecordingEvent>((event, emit) async {
      // await recorderController.record(path: event.path);
      emit(AudioRecordInProgressState());
      Logger().i('Recording started');
    });

    on<StopRecordingEvent>((event, emit) async {
      // await recorderController.stop();
      emit(AudioRecordStopState());
      Logger().i('Recording stopped');
    });

    on<UpdateWaveformEvent>((event, emit) async {
      emit(AudioRecordWaveformState(waveform: event.waveform));
      Logger().i('Waveform updated');
    });
  }
}
