import 'package:flutter/material.dart';
import 'questionPage.dart';
import 'homePage.dart';
void main() {
  runApp(SurveyApp());
}

class SurveyApp extends StatelessWidget {
  // This widget is the root of your application.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes:{
        HomePage.route:(context) => HomePage(),
        QuestionPage.route: (context) => QuestionPage(),
      },
      title: 'SURVEY',
      theme: ThemeData(
        primarySwatch: Colors.teal[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
