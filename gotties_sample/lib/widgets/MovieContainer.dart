import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;
  const MovieContainer({this.beforeImageURL});

  @override
  Widget build(BuildContext context) {
    // what's loadingBuilder
    // https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html
    return Image.network(beforeImageURL, loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes
              : null,
        ),
      );
    });
  }
}
