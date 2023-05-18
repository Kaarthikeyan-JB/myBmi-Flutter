import 'package:flutter/material.dart';
import 'package:mybmi/result.dart';
import 'package:mybmi/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      home: splash(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => __MyHomePageState();
}

class __MyHomePageState extends State<MyHomePage>{
  var height = TextEditingController();
  var weight = TextEditingController();
  var BMI;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("This is My BMI app"),
      ),*/

      body:
      Stack(
        children: [

          Container(
            height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/bmih.png",fit:BoxFit.fitHeight)),

          Center(
          child: Container(
            width: 325,
            //color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hey there! Lets get you a Health check !!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox.square(dimension: 30,),
                TextField(
                  controller: height,
                  style: TextStyle(color: Colors.grey),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Your Height (in Centimeters)",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.man,color: Colors.grey,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 4,
                      ),

                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 4,
                      ),),),),
                SizedBox.square(dimension: 25,),
                TextField(
                  style: TextStyle(color: Colors.grey),
                  controller: weight,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Your Weight (in Kilograms)",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.monitor_weight,color: Colors.grey,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 4,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 4,
                      ),),),),
                SizedBox.square(dimension: 25,),
                ElevatedButton(onPressed: (){
                  var h = double.parse(height.text.toString());
                  var w = double.parse(weight.text.toString());
                  BMI = w*10000/(h*h);
                  //setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context)=> result(BMI),
                      )
                  );
                  },
                    child: Text("Calculate")),
              ],
            ),
          ),
        ),

    ]
      ),
    );
  }

}


