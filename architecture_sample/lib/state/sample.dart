import 'package:architecture_sample/domain/get_sample.dart';
import 'package:architecture_sample/model/sample.dart';
import 'package:architecture_sample/state/atom_state.dart';
import 'package:architecture_sample/util/unit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sampleAtomFutureProvider = FutureProvider(
  (ref) async => SampleState(
    ref.watch(getSampleUseCaseProvider),
  ).fetch(),
);

class SampleState extends AtomState<SampleModel> {
  SampleState(
    this._getSampleUseCase,
  ) : super();

  final GetSampleUseCase _getSampleUseCase;

  @override
  Future<SampleModel> fetch() async => _getSampleUseCase.call(unit);
}
