import 'package:flutter/material.dart';
import 'package:sample_app/inherited_counter/counter_widget.dart';

class InheritedCounterPage extends StatelessWidget {
  const InheritedCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample'),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          counter.increment();
        },
        icon: const Icon(Icons.add),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Builder(
            builder: (context) {
              final counter = CounterWidget.of(context);
              return Text('Count is ${counter.count}');
            },
          ),
          const Text('hello'),
        ],
      ),
    );
  }
}
