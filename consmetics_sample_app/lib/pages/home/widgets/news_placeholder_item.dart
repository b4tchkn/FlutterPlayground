import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPlaceholderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Text('This is Placeholder'),
        ],
      ),
    );
  }
}
