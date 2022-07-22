import 'package:architecture_sample/data/sample.dart';
import 'package:architecture_sample/domain/use_case.dart';
import 'package:architecture_sample/model/sample.dart';
import 'package:architecture_sample/util/unit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getSample2UseCaseProvider = Provider(
  (ref) => GetSample2UseCase(
    ref.watch(sampleDataSourceProvider),
  ),
);

class GetSample2UseCase extends UseCase<Unit, Future<SampleModel>> {
  GetSample2UseCase(this._sampleDataSource);

  final SampleDataSource _sampleDataSource;

  @override
  Future<SampleModel> call(Unit param) async {
    await Future.delayed(const Duration(milliseconds: 6000), () {});
    return _sampleDataSource.getSample2();
  }
}
