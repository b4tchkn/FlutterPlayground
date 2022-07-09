import 'package:architecture_sample/domain/get_sample.dart';
import 'package:architecture_sample/model/sample.dart';
import 'package:architecture_sample/state/atom_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sampleStateProvider =
    StateNotifierProvider<SampleState, AsyncValue<SampleModel>>((ref) {
  return SampleState(
    ref.watch(getSampleUseCaseProvider),
  );
});

class SampleState extends AtomState<SampleModel> {
  SampleState(
    this._getSampleUseCase,
  ) : super();

  final AsyncValue<SampleModel> _getSampleUseCase;

  @override
  Future<void> fetch() async {
    _getSampleUseCase.when(
      data: (d) => state = AsyncData(d),
      error: (e, s) => state = AsyncError(e, stackTrace: s),
      loading: () => state = const AsyncLoading(),
    );
  }
}
