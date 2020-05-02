import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gottiessample/store/CounterStore.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterStore>(
      builder: (context, counterStore, _) {
        return Scaffold(
            body: Center(child: Text('${counterStore.count}')),
            floatingActionButton: FloatingActionButton(
              onPressed: counterStore.incrementalCounter,
            ));
      },
    );
  }
}
