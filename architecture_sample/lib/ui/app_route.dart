import 'package:architecture_sample/ui/home_page.dart';
import 'package:architecture_sample/ui/video_page.dart';
import 'package:go_router/go_router.dart';

final appRoute = [
  GoRoute(
    path: '/',
    builder: (_, __) => const HomePage(),
  ),
  GoRoute(
    path: AppRouteName.video,
    builder: (_, __) => const VideoPage(),
  ),
];

class AppRouteName {
  const AppRouteName._();

  static const video = '/video';
}
