import 'package:architecture_sample/model/sample.dart';

class SampleDataSource {
  Future<SampleModel> getSample() async => const SampleModel(
        title: 'サンプルタイトル',
        description: 'サンプルディスクリプション',
      );
}
