import 'package:consmeticssampleapp/util/widgets/icon_ripple_button.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
//      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Text(
            'Learn from the best\nmakeup artists.',
            maxLines: 2,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconRippleButton(
            width: 45,
            height: 45,
            icon: Icon(
              Icons.filter_list,
              color: Colors.blueGrey,
            ),
            onTapButton: () {
              final snackBar = SnackBar(
                content: Text('This is Filter'),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        )
      ],
    );
  }
}
