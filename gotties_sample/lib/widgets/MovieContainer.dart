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
    final beforeImage = Image.network(
      beforeImageURL,
      height: 300.0,
    );
    final afterImage = Image.network(afterImageURL, height: 300.0);
    return Column(children: <Widget>[
//      Center(
//        // https://flutter.dev/docs/cookbook/images/fading-in-images
//        // https://pub.dev/packages/cached_network_image#-readme-tab-
//        child: CachedNetworkImage(
//          placeholder: (context, beforeImageURL) => Center(
//            child: const CircularProgressIndicator(
//              backgroundColor: Colors.red,
//            ),
//          ),
//          imageUrl: afterImageURL,
//          height: 300,
//          fadeOutDuration: const Duration(seconds: 1),
//          fadeInDuration: const Duration(seconds: 3),
//          errorWidget: (context, beforeImageURL, error) => Center(
//            child: const Icon(Icons.error),
//          ),
//        ),
//      ),
      Center(
        child: GestureDetector(
          onTap: () {
            Provider.of<ArticleDetailStore>(context).startCrossFadeImage();
          },
          child: AnimatedCrossFade(
            firstChild: beforeImage,
            secondChild: afterImage,
            duration: Duration(seconds: 5),
            crossFadeState:
                Provider.of<ArticleDetailStore>(context).crossFadeState,
          ),
        ),
      ),
      Text(Provider.of<ArticleDetailStore>(context).isPlaying.toString()),
//      RaisedButton(
//        child: Text('Start Fade'),
//        onPressed:
//            Provider.of<ArticleDetailStore>(context).startCrossFadeImage(),
//      )
    ]);
  }
}
