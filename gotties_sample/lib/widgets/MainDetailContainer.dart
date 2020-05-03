import 'package:flutter/cupertino.dart';
import 'package:gottiessample/store/ArticleDetailStore.dart';
import 'package:provider/provider.dart';

class MainDetailContainer extends StatelessWidget {
  final article;
  const MainDetailContainer({this.article});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("タイトル：${article.title}"),
        Text("内容：${article.body}"),
        Text("カテゴリ：${article.category.title}"),
        Text(
            "投稿日：${Provider.of<ArticleDetailStore>(context).dateFormat(article.createdAt)}")
      ],
    );
  }
}
