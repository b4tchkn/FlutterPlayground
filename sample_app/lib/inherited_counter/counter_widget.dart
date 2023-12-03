import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  static CounterWidgetState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_CounterWidgetScope>()!
        .data;
  }

  @override
  State<CounterWidget> createState() => CounterWidgetState();
}

class CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _CounterWidgetScope(
      data: this,
      child: widget.child,
    );
  }
}

class _CounterWidgetScope extends InheritedWidget {
  const _CounterWidgetScope({
    required this.data,
    required super.child,
  });

  final CounterWidgetState data;

  @override
  bool updateShouldNotify(_CounterWidgetScope oldWidget) {
    return true;
  }
}
