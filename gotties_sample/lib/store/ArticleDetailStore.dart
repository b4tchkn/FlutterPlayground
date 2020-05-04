import 'dart:async';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleDetailStore with ChangeNotifier {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;
  bool isPlaying = false;
  Timer _crossFadeTimer;

  String dateFormat(DateTime dateTime) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }

  startCrossFadeImage() {
    // https://medium.com/@pongpiraupra/a-comprehensive-guide-to-playing-local-mp3-files-with-seek-functionality-in-flutter-7730a453bb1a
    AudioPlayer advancedPlayer = AudioPlayer();
    AudioCache audioCache = AudioCache(fixedPlayer: advancedPlayer);

    if (isPlaying) {
      advancedPlayer.stop();
      isPlaying = false;
    } else {
      audioCache.play('takumi.mp3');
      isPlaying = true;
    }
    notifyListeners();

    _crossFadeTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (crossFadeState == CrossFadeState.showFirst) {
        crossFadeState = CrossFadeState.showSecond;
      } else {
        crossFadeState = CrossFadeState.showSecond;
      }
      notifyListeners();
    });
  }
}
