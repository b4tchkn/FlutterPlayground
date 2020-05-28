import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';
import 'package:samplemusicplayer/widgets/circle_image.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem(this.music);
  final Music music;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
//      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleImage(
            width: 70,
            height: 70,
            imageUrl: music.thumbNail,
          ),
          Container(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
