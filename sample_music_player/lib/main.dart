import 'package:flutter/material.dart';
import 'package:samplemusicplayer/models/music.dart';
import 'package:samplemusicplayer/pages/music_play/music_play_page.dart';
import 'package:samplemusicplayer/pages/music_list/music_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MusicListPage(),
      routes: <String, WidgetBuilder>{
        '/musicPlayPage': (BuildContext context) => MusicPlayPage()
      },
      // ignore: missing_return
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/musicPlay':
            return MaterialPageRoute<void>(
              builder: (_) {
                final music = settings.arguments as Music;
                return MusicPlayPage(music: music);
              },
            );
        }
      },
    );
  }
}
