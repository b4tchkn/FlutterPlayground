import 'package:flutter/cupertino.dart';

class CounterStore with ChangeNotifier {
  var count = 0;

  void incrementalCounter() {
    count++;
    notifyListeners();
  }
}
