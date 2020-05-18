import 'package:bildam_survey/questionPage.dart';
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
    );
  }
}