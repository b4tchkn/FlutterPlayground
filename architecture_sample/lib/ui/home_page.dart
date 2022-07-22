import 'package:architecture_sample/state/sample.dart';
import 'package:architecture_sample/state/sample2.dart';
import 'package:architecture_sample/ui/default_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sample = ref.watch(sampleAtomFutureProvider);
    final sample2 = ref.watch(sample2AtomFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプル'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(sampleAtomFutureProvider),
        child: DefaultContainer(
          asyncValues: [sample, sample2],
          builder: (_) => CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(sample.value!.title),
                        Text(sample.value!.description),
                        const Divider(),
                        Text(sample2.value!.title),
                        Text(sample2.value!.description),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
