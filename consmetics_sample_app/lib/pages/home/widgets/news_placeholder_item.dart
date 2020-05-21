import 'package:consmeticssampleapp/util/widgets/shimmer_container.dart';
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
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ShimmerContainer(
              width: 250,
              height: 150,
              radius: 5,
            ),
            Container(
              height: 5,
            ),
            ShimmerContainer(
              width: 250,
              height: 55,
              radius: 5,
            )
          ],
        ),
      ),
    );
  }
}
