import 'package:flutter/material.dart';

// void main() {
//  runApp(MyApp());
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
debugShowCheckedModeBanner: false,
     theme: ThemeData(primarySwatch: Colors.deepOrange),
     home: Scaffold(
       appBar: AppBar(title: Text("My Application"),),
       body: MyBody(),

     ),
   );//for android
  }

}

class MyBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       padding: EdgeInsets.all(1),
       child: ElevatedButton(
         onPressed: () {

         },
         child: Row(
           children: [
             Text("Click1"),
             Text("Clickedsddd"),
             Icon(Icons.warning),

           ],
         ),

       ),
     ),

   );
  }
}


