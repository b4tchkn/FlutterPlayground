import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Color color;
  ProfilePage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is Profile"),
    );
  }
}
