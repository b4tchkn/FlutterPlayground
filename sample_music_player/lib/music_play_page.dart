import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';

class MusicPlayPage extends StatelessWidget {
  const MusicPlayPage({this.music});
  final Music music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text(music.title),
            Text(music.artist),
          ],
        ),
      ),
    );
  }
}
