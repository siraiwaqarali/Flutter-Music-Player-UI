import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioProvider extends ChangeNotifier {
  String audioUrl =
      'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4';
  AudioPlayer audioPlayer = AudioPlayer();
  Duration? totalDuration;
  Duration? position;
  String? audioState;

  AudioProvider() {
    initAudio();
  }

  void initAudio() {
    audioPlayer.onDurationChanged.listen((duration) {
      totalDuration = duration;
      notifyListeners();
    });

    audioPlayer.onPositionChanged.listen((position) {
      this.position = position;
      notifyListeners();
    });

    audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.playing) {
        audioState = 'Playing';
      } else if (state == PlayerState.paused) {
        audioState = 'Paused';
      } else if (state == PlayerState.stopped) {
        audioState = 'Stopped';
      }
      notifyListeners();
    });
  }

  playAudio() {
    audioPlayer.play(UrlSource(audioUrl));
  }

  pauseAudio() {
    audioPlayer.pause();
  }

  stopAudio() {
    audioPlayer.stop();
  }

  seekAudio(Duration durationToSeek) {
    audioPlayer.seek(durationToSeek);
  }
}
