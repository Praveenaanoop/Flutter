import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("MediaQuerry"),),
      body: MyMedia(),
    ),
  ));
}

class MyMedia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height*0.30,
         color: Colors.cyan,
         child: Center(
           child: Text("I am media querry",
           style: Theme.of(context).textTheme.headline5,
           textAlign: TextAlign.center,),
         ),
       ),
       Container(
         width: MediaQuery.of(context).size.width,
         padding: EdgeInsets.symmetric(horizontal: 16),
         //color: Colors.pink,
         child: Center(
           child: ElevatedButton(
             onPressed: () {
               Fluttertoast.showToast(msg: "Successfully pressed the button");
             },
             child: Text("Press me"),

           ),
         ),
       )
     ],
   );
  }
}