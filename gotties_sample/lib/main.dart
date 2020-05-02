import 'package:flutter/material.dart';
import 'package:gottiessample/model/Article.dart';
import 'package:gottiessample/model/category.dart';
import 'package:gottiessample/page/ArticleDetailPage.dart';
import 'package:gottiessample/store/CounterStore.dart';
import 'package:provider/provider.dart';

import 'page/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/article_detail': (_) => ArticleDetailPage()
      },
      home: ChangeNotifierProvider(
        create: (context) => CounterStore(),
        child: MyHomePage(
          a: "Gotties Sample App",
        ),
      ),
    );
  }
}
