import 'package:flutter/widgets.dart';

class MovieContainer extends StatelessWidget {
  final beforeImageURL;
  const MovieContainer({this.beforeImageURL});

  @override
  Widget build(BuildContext context) {
    return Image.network(beforeImageURL);
  }
}
