import 'package:consmeticssampleapp/pages/bag_page.dart';
import 'package:consmeticssampleapp/pages/favorite_page.dart';
import 'package:consmeticssampleapp/pages/home_page.dart';
import 'package:consmeticssampleapp/pages/profile_page.dart';
import 'package:consmeticssampleapp/pages/search_page.dart';
import 'package:consmeticssampleapp/placeholder_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(Colors.green),
    SearchPage(Colors.blue),
    BagPage(Colors.red),
    FavoritePage(Colors.pink),
    ProfilePage(Colors.purple)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(''),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
