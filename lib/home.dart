import 'package:flutter/material.dart';


import 'package:voltour/list.dart';
// import 'package:voltour/bottom_navigation.dart';
class Home extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
  
 
    return new Scaffold(
        
  backgroundColor: Colors.lightBlue[50],
 
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: VolList())
      ],
    ),
           
        
        );
  }
}