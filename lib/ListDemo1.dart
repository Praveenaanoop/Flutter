import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.brown),
  debugShowCheckedModeBanner: false,
  home: MyList(),));
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyList"),),
      body:ListView(
        children: [
          Center(
            child: Card(
              child: Text("List of fruits",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
            ),
          ),
          Card(
            child: Text("Orange"),
          ),
          Card(
            child: Text("Banana"),
          ),
          Card(
            child: Text("Melon"),
          ),

          Card(child: ListTile(
            title: Text("Seettings"),
            leading: Icon(Icons.settings),
            tileColor: Colors.deepOrangeAccent,
            subtitle: Text("go to settings"),
            trailing: Icon(Icons.arrow_forward),
          ),),
          Card(child: ListTile(
            title: Text("Copy"),
            leading: Icon(Icons.copy),
            tileColor: Colors.deepOrangeAccent,
            subtitle: Text("copy here"),
            trailing: Icon(Icons.arrow_forward),
          ),),
          Card(child: ListTile(
            title: Text("Paste"),
            leading: Icon(Icons.paste),
            tileColor: Colors.deepOrangeAccent,
            subtitle: Text("paste here"),
            trailing: Icon(Icons.paste),
          ),),
          Card(child: ListTile(
            title: Text("Cut"),
            leading: Icon(Icons.cut),
            tileColor: Colors.deepOrangeAccent,
            subtitle: Text("cut here"),
            trailing: Icon(Icons.arrow_forward),
          ),)
        ],
      ),
    );
  }
}

