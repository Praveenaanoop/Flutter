import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyStack(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 100,
              left: 300,

              child: Container(
                height: 200,
            width: 200,
            child: Center(child: Text("Positioned Widget")),
            color: Colors.green,
          )),
          Align(alignment: Alignment.topRight,

          child: Container(
            height: 200,
            width: 200,
            child: Center(child: Text("Align Widget")),
            color: Colors.red,
          )
          ),
          Container(
            height: 200,
            width: 200,
            child: Center(child: Text("Normal Widget")),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}