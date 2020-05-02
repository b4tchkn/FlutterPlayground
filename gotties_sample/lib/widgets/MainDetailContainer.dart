import 'package:flutter/cupertino.dart';

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
        Text(article.title),
        Text(article.body),
        Text(article.category.title)
      ],
    );
  }
}
