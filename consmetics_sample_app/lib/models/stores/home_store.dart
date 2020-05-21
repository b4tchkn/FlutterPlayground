import 'package:consmeticssampleapp/models/news.dart';
import 'package:consmeticssampleapp/models/repository.dart';
import 'package:consmeticssampleapp/models/repository_impl.dart';
import 'package:flutter/material.dart';

class HomeStore with ChangeNotifier {
  HomeStore() {
    print("dksafhjadsfhkja");
    fetchNews();
    print("dksafhjadsfhkja");
  }
//  HomeStore(Repository repository)
//      : assert(repository != null),
//        _repository = repository {
//    print('AAAAAAAAAAAAAAA');
//    fetchNews();
//    print('BBBBBBBBBBBBBBBBBBB');
//  }

  final _repository = RepositoryImpl();
  List<News> _news;
  List<News> news;

  Future<void> fetchNews() async {
    try {
      _news = await _repository.getNews();
      news = _news;
      print(news);
      notifyListeners();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
