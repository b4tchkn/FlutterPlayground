import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeumorphismWidget extends StatelessWidget {
  const NeumorphismWidget({
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
        color: Color(0xFF292D32),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        gradient: null,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            offset: Offset(3, 3),
            blurRadius: 15,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: Offset(-3, -3),
            blurRadius: 20,
            spreadRadius: 1,
          ),
        ],
      ),
      child: child,
    );
  }
}
