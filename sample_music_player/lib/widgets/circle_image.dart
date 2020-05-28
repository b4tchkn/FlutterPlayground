import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    this.width = 100,
    this.height = 100,
    @required this.imageUrl,
  });
  final double width;
  final double height;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
