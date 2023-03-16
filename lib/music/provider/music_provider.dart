import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

class Music_Player extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;

  void initAudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/music/sidhu.mp3"),
      autoStart: false,
      showNotification: true,
    );
  }

  Future<void> start() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> Astop() async {
    await assetsAudioPlayer!.stop();
  }
}
