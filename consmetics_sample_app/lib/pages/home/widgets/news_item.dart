import 'package:consmeticssampleapp/models/news.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(this.news);
  final News news;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(news.title),
        ],
      ),
    );
  }
}
