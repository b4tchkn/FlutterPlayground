import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gottiessample/store/ArticleDetailStore.dart';
import 'package:provider/provider.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;
  final afterImageURL;

  const MovieContainer({this.beforeImageURL, this.afterImageURL});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      GestureDetector(
        onTap: () {
          Provider.of<ArticleDetailStore>(context).startBeforeAfter();
        },
        child: Center(
          // https://flutter.dev/docs/cookbook/images/fading-in-images
          // https://pub.dev/packages/cached_network_image#-readme-tab-
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                placeholder: (context, beforeImageURL) => Center(
                  child: const CircularProgressIndicator(
                    backgroundColor: Colors.red,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
                imageUrl: beforeImageURL,
                height: 300,
              ),
              Opacity(
                // 0~1: 0だとこいつが完全に透明になる．1だと現れる
                // https://bukiyo-papa.com/opacity/
                opacity:
                    Provider.of<ArticleDetailStore>(context).playPositionRate,
                child: CachedNetworkImage(
                  imageUrl: afterImageURL,
                  height: 300,
                  fadeOutDuration: const Duration(seconds: 1),
                  fadeInDuration: const Duration(seconds: 1),
                  errorWidget: (context, beforeImageURL, error) => Center(
                    child: const Icon(Icons.error),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
