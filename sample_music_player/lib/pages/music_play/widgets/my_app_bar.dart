import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/widgets/neumorphism_widget.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NeumorphismWidget(
              width: 60,
              height: 60,
              color: Color(0xFF292D32),
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
            ),
            Text(
              'PLAYING NOW',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            NeumorphismWidget(
              width: 60,
              height: 60,
              color: Color(0xFF292D32),
              child: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
