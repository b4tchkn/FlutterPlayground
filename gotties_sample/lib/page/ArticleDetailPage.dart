import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gottiessample/model/Article.dart';
import 'package:gottiessample/model/category.dart';
import 'package:gottiessample/widgets/MainDetailContainer.dart';
import 'package:gottiessample/widgets/MovieContainer.dart';

class ArticleDetailPage extends StatelessWidget {
  final Article _article = Article(
    id: '0',
    userID: '0001',
    title: 'タイトル：100年の時を越えて',
    body: '内容：暇だから100年振りにお掃除しちゃいました♪♪♪♪',
    beforeImageURL:
        'https://pbs.twimg.com/profile_images/465752413467451392/J9J8Y8nW.jpeg',
    afterImageURL: 'https://i.ytimg.com/vi/HTwwFk7SOrI/maxresdefault.jpg',
    category: Category(id: '1', title: 'タグ：押入れ'),
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('ArticleDetilPage'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MovieContainer(
              beforeImageURL: _article.beforeImageURL,
            ),
            MainDetailContainer(
              article: _article,
            )
          ],
        ));
  }
}