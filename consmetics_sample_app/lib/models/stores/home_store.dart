import 'package:consmeticssampleapp/models/news.dart';
import 'package:consmeticssampleapp/models/repository.dart';
import 'package:consmeticssampleapp/models/repository_impl.dart';
import 'package:flutter/material.dart';

class HomeStore with ChangeNotifier {
  HomeStore(Repository repository)
      : assert(repository != null),
        _repository = repository {
    debugPrint('AAAAAAAAAAAAAAA');
    fetchNews();
    debugPrint('BBBBBBBBBBBBBBBBBBB');
  }

  final _repository;
  List<News> news = [];
  bool isLoading = false;

  Future<void> fetchNews() async {
    isLoading = true;
    notifyListeners();
    debugPrint('ふぇｔｃNEWSのなあだうよp');
    try {
      List<News> _news;
      _news = await _repository.getNews();
      news = _news;
      print(news);
      isLoading = false;
      notifyListeners();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
