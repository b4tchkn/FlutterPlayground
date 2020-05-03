import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleDetailStore with ChangeNotifier {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;
  Timer crossFadeTimer;

  String dateFormat(DateTime dateTime) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }

  startCrossFadeImage() {
    crossFadeTimer = Timer.periodic(Duration(seconds: 6),
        if (crossFadeState == CrossFadeState.showFirst) {
      crossFadeState = CrossFadeState.showSecond;
    } else {
    crossFadeState = CrossFadeState.showSecond;
    }
    notifyListeners();
    );
  }
}
