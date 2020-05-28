import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeumorphismWdget extends StatelessWidget {
  const NeumorphismWdget({
    this.width = 100,
    this.height = 100,
    @required this.child,
    this.radius = 50,
  });

  final double width;
  final double height;
  final Widget child;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xff323232),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        gradient: null,
        boxShadow: [
          BoxShadow(
            color: Color(0xff252525),
            offset: Offset(8, 8),
            blurRadius: 20,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Color(0xff404040),
            offset: Offset(-8, -8),
            blurRadius: 20,
            spreadRadius: 1,
          )
        ],
      ),
      child: child,
    );
  }
}
