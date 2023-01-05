import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'StackDeemo.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    debugShowCheckedModeBanner: false,
    home:MySmall()
  ));
}

class MySmall extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> MySmallState();
}


class MySmallState extends State {

  List<Map> mychecklist=[
    {"name":"football", "isChecked":false},
    {"name":"volleyball", "isChecked":false},
    {"name":"hockey", "isChecked":false},
    {"name":"cricket", "isChecked":false},
    {"name":"throwball", "isChecked":false},
    {"name":"basketball", "isChecked":false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Small Important Features"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),

                  onPressed: (){
                Fluttertoast.showToast(msg: "This is your toast",gravity: ToastGravity.CENTER_LEFT);
              },
                  child: Center(child: Text("Show Toast", style: TextStyle(color: Colors.white),))),
              ElevatedButton(
                  onPressed: (){
                    final snack=SnackBar(content: Text("Hiii This is Snackbar"),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=> MyStack()));
                        Fluttertoast.showToast(msg: "Success");
                      },

                    ),);
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  child: Text("Show Snackbar")),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Choose Your favourite Sports!!!",style: TextStyle(fontSize: 24),),
                      SizedBox(height: 20,),
                      Column(
                        children:mychecklist.map((sports){
                        return CheckboxListTile(
                            value: sports["isChecked"],
                            title: Text(sports["name"]),
                            onChanged: (onvalue){
                              setState(() {
                                sports["isChecked"]=onvalue;
                              });
                            });
                      }) .toList(),
                      ),
                      SizedBox(height: 30,),
                      Wrap(
                        children:mychecklist.map((sports)
                        {
                          if(sports["isChecked"]== true)
                            {
                              return Card(
                                elevation: 3,
                                  color: Colors.green,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(sports["name"]),
                                ),
                              );
                            }
                          return Container();
                        }).toList()
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}