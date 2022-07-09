import 'package:architecture_sample/data/sample.dart';
import 'package:architecture_sample/domain/use_case.dart';
import 'package:architecture_sample/model/sample.dart';
import 'package:architecture_sample/util/unit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getSampleUseCaseProvider = Provider(
  (ref) => GetSampleUseCase(
    ref.watch(sampleDataSourceProvider),
  ),
);

class GetSampleUseCase extends UseCase<Unit, Future<SampleModel>> {
  GetSampleUseCase(this._sampleDataSource);

  final SampleDataSource _sampleDataSource;

  @override
  Future<SampleModel> call(Unit param) async {
    Future.delayed(const Duration(milliseconds: 300));
    return _sampleDataSource.getSample();
  }
}
