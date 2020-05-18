import 'package:consmeticssampleapp/pages/home/widgets/home_header.dart';
import 'package:consmeticssampleapp/pages/home/widgets/top_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color color;

  HomePage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopImage(
                'https://pmcspy.files.wordpress.com/2017/10/reddit-beauty.jpg?w=958&h=599&crop=1'),
            Container(
              margin: EdgeInsets.all(25),
              child: HomeHeader(),
            ),
          ],
        ),
      ),
    );
  }
}
