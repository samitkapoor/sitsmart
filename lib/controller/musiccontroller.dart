import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicController extends GetxController {
  AudioPlayer advancedPlayer = AudioPlayer();
  static AudioCache player = AudioCache();
  final musicPath = "music/jazzy-abstract-beat-11254.mp3";

  @override
  void onInit() {
    player = AudioCache(fixedPlayer: advancedPlayer);
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    advancedPlayer.dispose();
    super.onClose();
  }

  void playMusic() {
    player.loop(musicPath);
  }

  void stopMusic() {
    advancedPlayer.stop();
  }
}
