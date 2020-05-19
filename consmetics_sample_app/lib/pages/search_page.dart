import 'package:consmeticssampleapp/pages/home/widgets/news_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final Color color;
  SearchPage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: NewsCarousel(),
          ),
        ],
      ),
    );
  }
}
