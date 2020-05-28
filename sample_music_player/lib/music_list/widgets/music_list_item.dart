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
//      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(right: 10, left: 10),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          NeumorphismWdget(
            width: 100,
            height: 100,
            child: Container(
              padding: EdgeInsets.all(5),
              child: CircleImage(
                imageUrl: music.thumbNail,
              ),
            ),
          ),
          Container(
            width: 40,
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
