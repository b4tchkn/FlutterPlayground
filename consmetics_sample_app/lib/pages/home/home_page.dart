import 'package:consmeticssampleapp/models/stores/home_store.dart';
import 'package:consmeticssampleapp/pages/home/widgets/home_header.dart';
import 'package:consmeticssampleapp/pages/home/widgets/news_carousel.dart';
import 'package:consmeticssampleapp/pages/home/widgets/top_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final Color color;

  HomePage(this.color);

  @override
  Widget build(BuildContext context) {
    final newsList = Provider.of<HomeStore>(context).news;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopImage(
              'https://pmcspy.files.wordpress.com/2017/10/reddit-beauty.jpg?w=958&h=599&crop=1',
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: HomeHeader(),
            ),
            SizedBox(
              height: 250,
              child: Container(
                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: NewsCarousel(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
