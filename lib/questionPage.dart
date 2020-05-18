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
        title: Image.asset('assets/logo.png', fit: BoxFit.contain, height: 50,),
        actions: [
          FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
          }, child: Text("About Us",), ),
          FlatButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => QuestionPage()));
          }, child: Text("Survey",), )
        ],
      ),
      body: Container(),
    );
  }
}