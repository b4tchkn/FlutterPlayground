import 'package:architecture_sample/model/async_entity.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    super.key,
    required this.asyncValues,
    required this.builder,
  });

  final List<AsyncValue<Object>> asyncValues;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    final entities = asyncValues
        .map(
          (e) => e.when(
            data: (d) => AsyncEntity(entity: d),
            error: (e, s) => AsyncEntity(error: e),
            loading: () => const AsyncEntity(fetch: FetchStatus.loading),
          ),
        )
        .toList();

    final hasEveryEntities =
        entities.every((element) => element.entity != null);
    final hasAnyError = entities.any((element) => element.error != null);

    return hasAnyError
        ? const Center(
            child: Text(
              'エラーが発生しました\nもう一度おためしください',
              textAlign: TextAlign.center,
            ),
          )
        : hasEveryEntities
            ? builder(context)
            : const Padding(
                padding: EdgeInsets.symmetric(horizontal: 48.0),
                child: Center(
                  child: LinearProgressIndicator(),
                ),
              );
  }
}
