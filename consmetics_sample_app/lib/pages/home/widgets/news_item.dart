import 'package:consmeticssampleapp/models/news.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(this.news);
  final News news;
  final double cardSize = 250;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardSize,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(news.imageUrl),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              width: cardSize,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
