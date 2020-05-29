import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';
import 'package:samplemusicplayer/pages/music_play/widgets/my_app_bar.dart';
import 'package:samplemusicplayer/pages/music_play/widgets/play_controller_widget.dart';
import 'package:samplemusicplayer/widgets/circle_image.dart';
import 'package:samplemusicplayer/widgets/neumorphism_widget.dart';

class MusicPlayPage extends StatelessWidget {
  const MusicPlayPage({this.music});
  final Music music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292D32),
      body: Container(
        child: Center(
          child: Column(
            children: [
              MyAppBar(),
              NeumorphismWidget(
                width: 300,
                height: 300,
                radius: 300,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleImage(
                    imageUrl: music.thumbNail,
                  ),
                ),
              ),
              Container(
                height: 40,
              ),
              Text(
                music.title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  music.artist,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: PlayControllerWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
