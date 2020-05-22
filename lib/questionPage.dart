import 'dart:async';

import 'package:flutter/material.dart';
import 'homePage.dart';
int imageCount=20;
List<bool> answers= new List<bool>();//true => yes , false => no
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
  bool imageShowState = true;
  int questionNumber=1;
  @override
  void initState() {
    Timer timer = new Timer(new Duration(seconds: 5), () {
      setState(() {
        if (imageShowState == true) {
          imageShowState = false;
        } else {
          imageShowState = true;
        }
      });
      debugPrint("Print after 5 seconds");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (imageShowState == true) {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "/odaklanmis/Slayt$questionNumber.JPG",
                fit: BoxFit.cover,
                height: 450,
              ),
            ],
          ),
        ),
      );
    }
    else if(questionNumber>=imageCount){
      print(answers);
      return  Center(
        child: Container(
          width: 800,
          height: 450,
          child: Text("Teşekkürler")
        ),
      );
    } 
    else {
      return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 800, height: 450, color: Theme.of(context).primaryColor,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(onPressed: (){setState(() {
                  imageShowState = true;
                  questionNumber++;
                  answers.add(true);
                  initState();
                  });}, 
                  child: Text("Evet"),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), side: BorderSide(color: Theme.of(context).primaryColor)),),
                  SizedBox(width: 300,),
                  FlatButton(onPressed: (){ setState(() {
                  questionNumber++;
                  imageShowState = true;
                  answers.add(false);
                  initState();
                  });}, 
                  child: Text("Hayır"), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0), side: BorderSide(color: Theme.of(context).primaryColor)),)
                ],
              )
            ],
          ),
      );
    }
  }
}
