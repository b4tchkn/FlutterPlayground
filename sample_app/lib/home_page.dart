import 'package:flutter/material.dart';
import 'package:sample_app/inherited_counter/inherited_counter_page.dart';
import 'package:sample_app/riverpod_counter/riverpod_counter_page.dart';

enum HomeItemType {
  inheritedCounter,
  riverpodCounter,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: ListView.builder(
        itemCount: HomeItemType.values.length,
        itemBuilder: (context, index) {
          final type = HomeItemType.values[index];
          return ListTile(
            title: Text(type.name),
            onTap: () async {
              Widget page;
              switch (type) {
                case HomeItemType.inheritedCounter:
                  page = const InheritedCounterPage();
                  break;
                case HomeItemType.riverpodCounter:
                  page = const RiverpodCounterPage();
                  break;
              }
              await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => page),
              );
            },
          );
        },
      ),
    );
  }
}
