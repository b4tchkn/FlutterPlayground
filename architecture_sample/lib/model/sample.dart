import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';

@freezed
class Sample with _$Sample {
  const factory Sample({
    /// タイトル
    required String title,

    /// 詳細
    required String description,
  }) = _Sample;
}
