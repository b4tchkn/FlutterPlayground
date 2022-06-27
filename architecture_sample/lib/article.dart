import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    /// タイトル
    required String title,

    /// 詳細
    required String description,
  }) = _Article;
}
