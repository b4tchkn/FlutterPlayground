import 'package:architecture_sample/domain/get_sample2.dart';
import 'package:architecture_sample/model/sample.dart';
import 'package:architecture_sample/state/atom_state.dart';
import 'package:architecture_sample/util/unit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sample2AtomFutureProvider = FutureProvider(
  (ref) async => Sample2State(
    ref.watch(getSample2UseCaseProvider),
  ).fetch(),
);

class Sample2State extends AtomState<SampleModel> {
  Sample2State(
    this._getSample2UseCase,
  ) : super();

  final GetSample2UseCase _getSample2UseCase;

  @override
  Future<SampleModel> fetch() async => _getSample2UseCase.call(unit);
}
