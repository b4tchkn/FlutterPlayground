import 'package:flutter/material.dart';
import 'package:gottiessample/store/CounterStore.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => CounterStore(),
        child: MyHomePage(
          a: "Gotties Sample App",
        ),
      ),
    );
  }
}
