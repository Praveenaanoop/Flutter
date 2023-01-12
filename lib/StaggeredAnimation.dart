import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Staggered Animation"),),
      body: MyStaggered(),
    ),
  ));
}

class MyStaggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index){
                return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: Duration(seconds: 4),
                    child: ScaleAnimation(
                      //verticalOffset: 44.0,
                      child: FadeInAnimation(
                        child: Card(
                          color: Colors.redAccent,
                          child: ListTile(
                            title: Text('$index item'),
                          ),
                        ),

                      ),

                    ));
              }),

      ),

      ),
    );
  }
}