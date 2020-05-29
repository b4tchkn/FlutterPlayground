import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplemusicplayer/widgets/neumorphism_widget.dart';

class PlayControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NeumorphismWidget(
          height: 80,
          width: 80,
          color: Color(0xFF292D32),
          child: Icon(
            Icons.skip_previous,
            color: Colors.grey,
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: NeumorphismWidget(
            height: 80,
            width: 80,
            color: Color(0xFFEC4D0F),
            child: Icon(
              Icons.pause,
              color: Colors.grey,
              size: 40,
            ),
          ),
        ),
        NeumorphismWidget(
          height: 80,
          width: 80,
          color: Color(0xFF292D32),
          child: Icon(
            Icons.skip_next,
            color: Colors.grey,
            size: 40,
          ),
        )
      ],
    );
  }
}
