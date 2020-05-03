import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;
  const MovieContainer({this.beforeImageURL});

  @override
  Widget build(BuildContext context) {
    // what's loadingBuilder
    // https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html
    return Center(
      // https://flutter.dev/docs/cookbook/images/fading-in-images
      child: CachedNetworkImage(
        placeholder: (context, beforeImageURL) => Center(
          child: const CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
        ),
        imageUrl: beforeImageURL,
        fadeOutDuration: const Duration(seconds: 1),
        fadeInDuration: const Duration(seconds: 3),
      ),
    );
  }
}
