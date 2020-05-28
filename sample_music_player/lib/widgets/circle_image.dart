import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    @required this.imageUrl,
    this.width = 100,
    this.height = 100,
  });

  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
