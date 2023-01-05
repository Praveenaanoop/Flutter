import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyListSep(),
  ));
}

class MyListSep extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> ListSeparateState();


}

class ListSeparateState extends State{

  List<String> images=["assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg",
    "assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg","assets/images/flower.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Builder"),),
      body:ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(images[index]),
          ),
          title: Text("First Tile"),
          subtitle: Text("first"),
        );
      }

          , separatorBuilder: (context,index){
        return Divider(
          height: 2,
          color: Colors.yellowAccent,
        );
          },
          itemCount: images.length,
      padding: EdgeInsets.all(10),) );
  }
}
