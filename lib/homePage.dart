import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  static const String route='/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(onPressed: null, child: Text("About Us"))
        ],
      ),
    );
  }
}