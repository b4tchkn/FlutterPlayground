import 'package:architecture_sample/model/async_entity.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class AtomState<T extends Object>
    extends StateNotifier<AsyncEntity<T>> {
  AtomState() : super(const AsyncEntity()) {
    fetch();
  }

  @protected
  Future<void> fetch();
}
