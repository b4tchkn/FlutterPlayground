import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticleDetailStore with ChangeNotifier {
  String dateFormat(DateTime dateTime) {
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }
}
