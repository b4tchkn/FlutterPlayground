import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;
  const MovieContainer({this.beforeImageURL});

  @override
  Widget build(BuildContext context) {
    // what's loadingBuilder
    // https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html
    return Image.network(beforeImageURL, height: 400.0, loadingBuilder:
        (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              // https://flutter.dev/docs/cookbook/images/fading-in-images
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: beforeImageURL,
                fadeInCurve: Curves.easeOut,
              ),
            ),
          ],
        ),
      );
    });
  }
}
