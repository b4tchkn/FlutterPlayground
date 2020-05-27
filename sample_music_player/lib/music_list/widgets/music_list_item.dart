import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem(this.music);
  final Music music;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.network(music.thumbNail),
          Container(
            width: 10,
          ),
          Column(
            children: [
              Text(
                music.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                music.artist,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
