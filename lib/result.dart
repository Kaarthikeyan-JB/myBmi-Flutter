import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatefulWidget{
  var bmi;
  result(this.bmi);
  @override
  State<StatefulWidget> createState() => resultState();
  }

class resultState extends State<result>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Stack(
          children: [

          Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/images/bmih.png",fit:BoxFit.fitHeight)),

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Your BMI",style: TextStyle(fontSize: 50,
              color: Colors.white,
            ),),
            Text("is",style: TextStyle(fontSize: 50,
            color: Colors.white,
            ),),
            Text("${widget.bmi.toStringAsFixed(2)}",style: TextStyle(fontSize: 50,
            color: Colors.white,
            ),
            ),
          ],
        ),
      )
        ]),

    );
  }

}