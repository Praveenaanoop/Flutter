import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';

void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State{
  @override
  void initState() {
    //duration of a splash screen, invoked when second scren oveerlaps first screen
    Timer(Duration(seconds: 5), 
            ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyScuff())));

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
          height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),

            ),
            child: Center(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSalEj8tnk7AywBgsPErBHh2_8vFwc2yZty-mqmzy3t6pP_lN3WnokkH8ghoeFPZ13cs3g&usqp=CAU",fit: BoxFit.cover,),
            ),
          ),
          Container(
            child: Image.asset("assets/images/flower.jpg"),
          ),

        ],
      ),

    );
  }


}

class MyScuff extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          image: DecorationImage(image: AssetImage("assets/images/flower.jpg"))
      ),
    );
  }

}




