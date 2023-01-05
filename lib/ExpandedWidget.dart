import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyExpanded(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Expanded"),
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Expanded(
           flex: 1,
           child: Container(
             color: Colors.red,
             width: 200,
             child: Center(child: Text("Containers 1")),
           ),
         ),
         Container(
           color: Colors. green,
           height: 200,
           width: 200,
           child: Center(child: Text("Containers 2")),
         ),

            Container(
             color: Colors.blue,
             
             width: 200,
             child: Center(child: Text("Containers 2")),
           ),

       ],
     ),
   );
  }
}