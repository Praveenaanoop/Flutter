import 'package:flutter/material.dart';

import 'AboutPage.dart';
import 'HomeScreen.dart';
import 'Settings.dart';

void main(){
  runApp(MaterialApp(
    home: HomePageDrawer(),
  ));
}

class HomePageDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePage1();

}

class HomePage1 extends State{

  String mainpropic="https://i.pinimg.com/236x/f3/af/1c/f3af1ca137939bad4e7f8d95d96d96b6.jpg";
  String otherpropic="https://1fid.com/wp-content/uploads/2022/07/cute-profile-picture-28-1024x1024.jpg";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Navigation Drawer Home"),
     ),

drawer:Theme(
  data: Theme.of(context).copyWith(
    canvasColor: Colors.transparent
  ),
  child:   Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
            accountName: Text("Don John"),
            accountEmail: Text("donjohn333@gmail.com"),
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(
            backgroundImage: NetworkImage(otherpropic),
          ),
          onTap: ()=>print("Current User"),
        ),
        decoration: BoxDecoration(
          //color: Colors.green
        ),
        ),
        ListTile(
          title: Text("Home Page"),
          trailing: Icon(Icons.home),
          onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext  conteext)=>Home()));
          }
        ),
        Divider(
          thickness: 10.0,
        ),
        ListTile(
            title: Text("About"),
            trailing: Icon(Icons.person),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext  conteext)=>About()));
            }
        ),
        Divider(
          thickness: 10.0,
        ),
        ListTile(
            title: Text("Settings Page"),
            trailing: Icon(Icons.settings),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext  conteext)=>Settings()));
            }
        ),
        Divider(
          thickness: 10.0,
        ),
        ListTile(
            title: Text("Close"),
            trailing: Icon(Icons.close),
            onTap: (){
              Navigator.of(context).pop();
            }
        ),
      ],
    ),
  ),
),
   );
  }
}