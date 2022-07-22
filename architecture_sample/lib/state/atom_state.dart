import 'package:flutter/widgets.dart';

abstract class AtomState<T extends Object> {
  AtomState() : super() {
    fetch();
  }

  @protected
  Future<void> fetch();
}
