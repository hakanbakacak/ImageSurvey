import 'dart:async';

import 'package:flutter/material.dart';
import 'homePage.dart';

class QuestionPage extends StatefulWidget {
  static const String route = '/survey';
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 50,
        ),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            },
            child: Text(
              "About Us",
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => QuestionPage()));
            },
            child: Text(
              "Survey",
            ),
          )
        ],
      ),
      body: ImageTimer(),
    );
  }
}

class ImageTimer extends StatefulWidget {
  @override
  _ImageTimerState createState() => _ImageTimerState();
}

class _ImageTimerState extends State<ImageTimer> {
  bool question = true;
  @override
  void initState() {
    Timer timer = new Timer(new Duration(seconds: 5), () {
      setState(() {
        if (question == true) {
          question = false;
        } else {
          question = true;
        }
      });
      debugPrint("Print after 5 seconds");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (question == true) {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                fit: BoxFit.cover,
                height: 500,
              ),
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: Icon(Icons.add), onPressed:(){}),
            IconButton(icon: Icon(Icons.ac_unit), onPressed: (){})
          ],
        ),
      );
    }
  }
}
