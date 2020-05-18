import 'package:flutter/cupertino.dart';

class TopImage extends StatelessWidget {
  const TopImage(this.imageUrl);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 250),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
