import 'package:flutter/widgets.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer();
  final String _imageUrl =
      'https://pbs.twimg.com/profile_images/465752413467451392/J9J8Y8nW.jpeg';

  @override
  Widget build(BuildContext context) {
    return Image.network(_imageUrl);
  }
}
