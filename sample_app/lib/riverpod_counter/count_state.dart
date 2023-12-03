import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'count_state.g.dart';

@Riverpod(keepAlive: true)
class CountState extends _$CountState {
  @override
  int build() => 0;

  void increment() => state++;

  void a() {
    ref.onDispose(() {});
  }
}
