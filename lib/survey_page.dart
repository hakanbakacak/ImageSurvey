import 'dart:async';

import 'package:flutter/material.dart';


class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  Timer timer;
  int remainingTime= 5;
  @override
  void initState() {
    
    super.initState();
  }
  void startTime(){
    remainingTime = 5;
    Timer.periodic(Duration(seconds: 1), (timer) {
        if(remainingTime>0){

          setState(() {
            remainingTime--;  
          });
        } 
        else{
          timer.cancel();
          remainingTime = 5;
          return;
        }
       
     });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Image.asset('assets/logo.png', fit: BoxFit.contain, height: 50,),
        actions: [
        //tabları buraya ekle 
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text(remainingTime.toString()),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(16),
                border: Border.all(color: Colors.white),
                 color: Colors.cyan[100],
                 ),
              width: size.width*0.4,
              height: size.height*0.4,
              
            ),
          ),
          IconButton(onPressed:remainingTime !=5 ? null : (){
            startTime();
          }  , color: Colors.black, icon: Icon(Icons.ac_unit))
        ],
      )
    );
  }
}

