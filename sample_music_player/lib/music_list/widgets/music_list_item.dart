import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';
import 'package:samplemusicplayer/widgets/circle_image.dart';
import 'package:samplemusicplayer/widgets/neumorphism_widget.dart';

class MusicListItem extends StatelessWidget {
  const MusicListItem(this.music);
  final Music music;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(right: 10, left: 10),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          NeumorphismWidget(
            width: 100,
            height: 100,
            child: Container(
              padding: EdgeInsets.all(12),
              child: CircleImage(
                imageUrl: music.thumbNail,
              ),
            ),
          ),
          Container(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  music.title,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Text(
                "${music.artist}・${Music.convertMusicLength(music.musicLength)}",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
