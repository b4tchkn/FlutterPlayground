import 'package:architecture_sample/model/async_entity.dart';
import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  const DefaultContainer({
    super.key,
    required this.entities,
    required this.builder,
  });

  final List<AsyncEntity> entities;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
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
