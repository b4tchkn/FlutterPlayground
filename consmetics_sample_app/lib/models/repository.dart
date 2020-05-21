import 'package:consmeticssampleapp/models/news.dart';

abstract class Repository {
  Future<List<News>> getNews();
}
