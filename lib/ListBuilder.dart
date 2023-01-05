import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyListBuild(),
  ));
}

class MyListBuild extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> ListBuilderState();
 
    
  }

class ListBuilderState extends State{
  
  List<String> images=["assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg",
    "assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Builder"),),
      body: ListView.builder(itemBuilder: (context,index)
      {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(images[index]),
            ),
            title: Text("First Tile"),
            subtitle: Text("first"),
          ),
        );
      },
      itemCount: images.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(5),),
    );
  }
}
