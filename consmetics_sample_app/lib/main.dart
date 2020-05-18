import 'package:consmeticssampleapp/main_store.dart';
import 'package:consmeticssampleapp/placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<MainStore>(
        child: Main(),
        create: (context) => MainStore(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: _children[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          provider.currentIndex = index;
          debugPrint("よばれた");
        },
        currentIndex: provider.currentIndex,
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
