import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample_app/inherited_counter/counter_widget.dart';
import 'package:sample_app/riverpod_counter/count_state.dart';

class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inheritedCounter = CounterWidget.of(context);
    final riverpodCounter = ref.watch(countStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverpodCounterPage'),
      ),
      floatingActionButton: const _IconButton(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('This is RiverpodCounterPage'),
            Text('InheritedCounter is ${inheritedCounter.count}'),
            Text('RiverpodCounter is $riverpodCounter'),
          ],
        ),
      ),
    );
  }
}

class _IconButton extends ConsumerWidget {
  const _IconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterNotifier = ref.watch(countStateProvider.notifier);
    print('_IconButton');

    return IconButton(
      onPressed: () {
        counterNotifier.increment();
      },
      icon: const Icon(Icons.add),
    );
  }
}
