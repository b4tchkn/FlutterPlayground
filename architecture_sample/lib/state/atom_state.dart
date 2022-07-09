import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AtomState<T extends Object>
    extends StateNotifier<AsyncValue<T>> {
  AtomState() : super(const AsyncValue.loading()) {
    fetch();
  }

  @protected
  Future<void> fetch();
}
