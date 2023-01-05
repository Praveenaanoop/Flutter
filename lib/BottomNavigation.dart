import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    home: BottomNavigation(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BottomState();

  }

class BottomState extends State{

    List<Widget> datas=[
      Text('index 0: Settings'),
      Text('index 1: Copy'),
      Text('index 2: Paste'),
      Text('index 3: Cut'),
      Text('index 4: remove'),
    ];
    int selindex=0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("BottomNavigation"),
        ),
        body: Center(child: Container(
            child: IndexedStack(
              index: selindex,
              children: datas,
            ))),




        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.redAccent,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blue,
          onTap: selectedfromdatas,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.settings),label:"settings"),
            BottomNavigationBarItem(icon:Icon(Icons.cut),label: "Cut"),
            BottomNavigationBarItem(icon:Icon(Icons.copy),label:"copy"),
            BottomNavigationBarItem(icon:Icon(Icons.paste),label:"paste"),
            BottomNavigationBarItem(icon:Icon(Icons.remove),label:"remove"),

          ],),
      );
  }
    void selectedfromdatas(int index) {
      selindex=index;
      setState(() {
        
      });

    }
}



