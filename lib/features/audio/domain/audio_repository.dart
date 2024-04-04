// import 'package:initial_setup/features/audio/domain/audio_model.dart';

// abstract class AudioRepository {
//   Future<List<Audio>> fetchAudioList();
// }

// class AudioRepositoryImpl implements AudioRepository {
//   @override
//   Future<List<Audio>> fetchAudioList() async {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return [
//         Audio(
//           id: 1,
//           title: 'Audio 1',
//           url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
//           artist: 'Artist 1',
//           duration: const Duration(seconds: 30),
//         ),
//         Audio(
//           id: 2,
//           title: 'Audio 2',
//           url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
//           artist: 'Artist 2',
//           duration: const Duration(seconds: 30),
//         ),
//         Audio(
//           id: 3,
//           title: 'Audio 3',
//           url: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
//           artist: 'Artist 3',
//           duration: const Duration(seconds: 30),
//         ),
//       ];
//     });
//   }
// }
