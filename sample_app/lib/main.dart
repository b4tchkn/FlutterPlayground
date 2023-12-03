import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/app.dart';
import 'package:sample_app/inherited_counter/counter_widget.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CounterWidget(
        child: MyApp(),
      ),
    ),
  );
}
