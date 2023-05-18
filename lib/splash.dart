import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybmi/main.dart';

class splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => splashState();
  }

class splashState extends State<splash>{

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context)=>MyHomePage(),)
      );
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:
        Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/images/MyBMI.png",fit:BoxFit.fitHeight,)),);
  }
}