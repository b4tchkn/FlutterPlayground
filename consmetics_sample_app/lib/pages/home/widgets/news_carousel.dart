import 'package:consmeticssampleapp/models/news.dart';
import 'package:consmeticssampleapp/pages/home/widgets/news_item.dart';
import 'package:flutter/material.dart';

class NewsCarousel extends StatelessWidget {
  final List<News> newsList = [
    News(imageUrl: "", title: "This is Title", isNew: true, tag: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 300,
          child: NewsItem(newsList[index]),
        );
      },
      itemCount: newsList.length,
    );
  }

  Widget _separatorItem() {
    return Container(
      width: 10,
      color: Colors.blue,
    );
  }
}
