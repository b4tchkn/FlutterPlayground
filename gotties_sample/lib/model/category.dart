import 'package:gottiessample/model/entities.dart';

@immutable
class Category {
  const Category({@required this.id, @required this.title});

  Category.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] as String,
          title: json['title'] as String,
        );

  final String id;
  final String title;
}
