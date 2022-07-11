import 'package:architecture_sample/state/sample.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sample = ref.watch(sampleStateProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: sample.entity == null
            ? const CircularProgressIndicator()
            : Text(
                sample.entity!.title,
              ),
      ),
    );
  }
}
