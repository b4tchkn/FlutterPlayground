import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';
import 'package:samplemusicplayer/music_list/widgets/music_list_item.dart';

class MusicListPage extends StatelessWidget {
  final musicList = [
    Music(
      thumbNail:
          'https://images-na.ssl-images-amazon.com/images/I/91d-Jeq%2BYNL._AC_SL1500_.jpg',
      title: 'オーケストラ',
      artist: 'BiSH',
      musicLength: 223,
    ),
    Music(
      thumbNail:
          'https://images-fe.ssl-images-amazon.com/images/I/61Z0Jrd6KQL.jpg',
      title: 'プロミスザスター',
      artist: 'BiSH',
      musicLength: 236,
    ),
    Music(
      thumbNail:
          'https://images-na.ssl-images-amazon.com/images/I/71HcwDVR2iL._AC_SL1000_.jpg',
      title: 'GiANT KiLLERS',
      artist: 'BiSH',
      musicLength: 236,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff323232),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return MusicListItem(musicList[index]);
        },
        itemCount: musicList.length,
      ),
    );
  }
}
