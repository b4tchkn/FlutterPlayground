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
              backgroundColor: Colors.pink,
              title: Text(a),
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${counterStore.count}'),
                  RaisedButton(
                    child: Text('Next Screen'),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/article_detail");
                    },
                  )
                ],
              ),
            ),
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
