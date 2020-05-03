import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;

  const MovieContainer({this.beforeImageURL});

  @override
  Widget build(BuildContext context) {
    return Center(
      // https://flutter.dev/docs/cookbook/images/fading-in-images
      // https://pub.dev/packages/cached_network_image#-readme-tab-
      child: CachedNetworkImage(
        placeholder: (context, beforeImageURL) => Center(
          child: const CircularProgressIndicator(
            backgroundColor: Colors.red,
          ),
        ),
        imageUrl: beforeImageURL,
        height: 400,
        fadeOutDuration: const Duration(seconds: 1),
        fadeInDuration: const Duration(seconds: 3),
        errorWidget: (context, beforeImageURL, error) => Center(
          child: const Icon(Icons.error),
        ),
      ),
    );
  }
}
