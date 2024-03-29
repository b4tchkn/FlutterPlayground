import 'package:architecture_sample/model/sample.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sampleDataSourceProvider = Provider<SampleDataSource>(
  (_) => SampleDataSource(),
);

class SampleDataSource {
  Future<SampleModel> getSample() async => const SampleModel(
        title: 'サンプルタイトル',
        description: 'サンプルディスクリプション',
      );

  Future<SampleModel> getSample2() async => const SampleModel(
        title: 'サンプルタイトル2',
        description: 'サンプルディスクリプション2',
      );
}
