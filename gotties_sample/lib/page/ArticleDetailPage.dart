import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gottiessample/model/Article.dart';
import 'package:gottiessample/model/category.dart';
import 'package:gottiessample/store/ArticleDetailStore.dart';
import 'package:gottiessample/widgets/MainDetailContainer.dart';
import 'package:gottiessample/widgets/MovieContainer.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ArticleDetailPage extends StatelessWidget {
  final Article _article = Article(
    id: '0',
    userID: '0001',
    title: '100年の時を越えて',
    body: '暇だから100年振りにお掃除しちゃいました♪♪♪♪',
    beforeImageURL:
        'https://pbs.twimg.com/profile_images/465752413467451392/J9J8Y8nW.jpeg',
    afterImageURL: 'https://i.ytimg.com/vi/HTwwFk7SOrI/maxresdefault.jpg',
    category: Category(id: '1', title: '押入れ'),
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ArticleDetailStore(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('ArticleDetilPage'),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: MovieContainer(
                    beforeImageURL: _article.beforeImageURL,
                  ),
                ),
                MainDetailContainer(
                  article: _article,
                )
              ],
            ),
          )),
    );
  }
}
