import 'package:flutter/material.dart';


class QuestionPage extends StatefulWidget {
  static const String route = '/survey';
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Survey"),),
    );
  }
}