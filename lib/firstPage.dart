import 'package:flutter/material.dart';

import 'SecondPage.dart';

void main()
{
  runApp(MaterialApp(
    home: Myfirstt(),
  ));
}

class Myfirstt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Second()));
         // Navigator.pushNamed(context,"Second");

        },
          child: Text("Goto"),

        ),
      ),
    );
  }
}



