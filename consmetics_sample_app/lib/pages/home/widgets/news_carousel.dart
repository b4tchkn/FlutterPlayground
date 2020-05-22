import 'package:consmeticssampleapp/models/stores/home_store.dart';
import 'package:consmeticssampleapp/pages/home/widgets/news_item.dart';
import 'package:consmeticssampleapp/pages/home/widgets/news_placeholder_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _newsListSize = Provider.of<HomeStore>(context).news.length;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return _newsListSize == 0
            ? NewsPlaceholderItem()
            : NewsItem(Provider.of<HomeStore>(context).news[index]);
      },
      itemCount:
          _newsListSize == 0 ? 5 : Provider.of<HomeStore>(context).news.length,
    );
  }
}
