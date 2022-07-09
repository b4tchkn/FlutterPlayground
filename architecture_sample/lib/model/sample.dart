import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';

@freezed
class SampleModel with _$SampleModel {
  const factory SampleModel({
    /// タイトル
    required String title,

    /// 詳細
    required String description,
  }) = _SampleModel;
}
