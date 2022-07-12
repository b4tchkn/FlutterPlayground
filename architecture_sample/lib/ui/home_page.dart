import 'package:architecture_sample/model/async_entity.dart';
import 'package:architecture_sample/state/sample.dart';
import 'package:architecture_sample/ui/default_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sample = ref.watch(sampleStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプル'),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(sampleStateProvider.notifier).refresh(ref),
        child: DefaultContainer(
          entities: [sample],
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
                        Text(sample.entity!.title),
                        Text(sample.entity!.description),
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
