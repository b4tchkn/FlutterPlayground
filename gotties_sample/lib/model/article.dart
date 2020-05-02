import 'package:gottiessample/model/entities.dart';

@immutable
class Article {
  const Article(
      {@required this.id,
      @required this.userID,
      @required this.title,
      @required this.body,
      @required this.category,
      @required this.beforeImageURL,
      @required this.afterImageURL,
      @required this.createdAt,
      @required this.updatedAt});

  Article.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'] as String,
            userID: json['user_id'] as String,
            title: json['title'] as String,
            body: json['body'] as String,
            beforeImageURL: json['before'] as String,
            afterImageURL: json['after'] as String,
            category:
                Category.fromJson(json['category'] as Map<String, dynamic>),
            createdAt: DateTime.parse(json['created_at'] as String),
            updatedAt: DateTime.parse(json['updated_at'] as String));

  final String id;
  final String userID;
  final String title;
  final String body;
  final Category category;
  final String beforeImageURL;
  final String afterImageURL;
  final DateTime createdAt;
  final DateTime updatedAt;
}
