import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gottiessample/widgets/MainDetailContainer.dart';
import 'package:gottiessample/widgets/MovieContainer.dart';

class ArticleDetailPage extends StatelessWidget {
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
          children: <Widget>[MovieContainer(), MainDetailContainer()],
        ));
  }
}
