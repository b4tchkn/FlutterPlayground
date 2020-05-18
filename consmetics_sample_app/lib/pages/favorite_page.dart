import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  final Color color;
  FavoritePage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is Favorite"),
    );
  }
}
