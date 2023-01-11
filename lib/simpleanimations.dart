import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:simple_animations/simple_animations.dart';

void main(){
  runApp(MaterialApp(home: Scaffold(
    body: Center(
      child: Myanimations(),
    ),
  ),));
}

class Myanimations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(//it may reesult in decimal values
      tween: Tween(begin: 0.0,end: 150),
      duration: const Duration(seconds: 3),
      curve: Curves.bounceIn,
      builder: (context,child,value){
        return Container(

          width: value,
          height: value,
          color: Colors.red,
        );
      },

    );



  }
}