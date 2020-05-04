import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleDetailStore with ChangeNotifier {
  bool isPlaying = false;

  AudioPlayer _advancedPlayer = AudioPlayer();
  AudioCache _audioCache;

  String dateFormat(DateTime dateTime) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }

  startBeforeAfter() {
    // https://medium.com/@pongpiraupra/a-comprehensive-guide-to-playing-local-mp3-files-with-seek-functionality-in-flutter-7730a453bb1a
//    _advancedPlayer = AudioPlayer();
    _audioCache = AudioCache(fixedPlayer: _advancedPlayer);

    if (isPlaying) {
      print("STOP");
      _advancedPlayer.stop();
      isPlaying = false;
    } else {
      print("START");
      _audioCache.play('takumi.mp3');
      isPlaying = true;
    }
    notifyListeners();
  }
}
