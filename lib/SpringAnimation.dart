import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Spring Animation"),

      ),
      body: Center(child: SpringDemo()),
    ),
  ));
}

class SpringDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spring.scale(start: 0.2, end: 1.0, child: RedCard()),
        Spring.slide(slideType: SlideType.slide_in_left, child: RedCard()),
        Spring.shake(child: RedCard()),
        Spring.rotate(child: RedCard())
      ],
    );
  }
}

class RedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
     width: 100,
     height: 100,
     decoration: BoxDecoration(
       color: Colors.green,
       borderRadius: BorderRadius.circular(10)
     ),
   );
  }
}