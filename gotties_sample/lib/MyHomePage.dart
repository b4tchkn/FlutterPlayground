import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gottiessample/store/CounterStore.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  final a;
  MyHomePage({this.a});
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterStore>(
      builder: (context, counterStore, _) {
        return Scaffold(
            appBar: AppBar(
              title: Text(a),
            ),
            body: Center(child: Text('${counterStore.count}')),
            floatingActionButton: FloatingActionButton.extended(
              label: Text('Count'),
              icon: Icon(Icons.add),
              backgroundColor: Colors.pink,
              onPressed: counterStore.incrementalCounter,
            ));
      },
    );
  }
}
