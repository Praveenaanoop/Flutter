import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp((MaterialApp(
    home: MyGrid(),
  )));
}

class MyGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),

      ),
      body: GridView.count(
          crossAxisCount: 4,
      crossAxisSpacing: 2,
      mainAxisSpacing: 4,
      children: 
        List.generate(datas.length, (index){
          return Center(
            child: SelectedCard(datas:datas[index]),
          );
        })
      ,),
    );
  }
  
 
}

class SelectedCard extends StatelessWidget {
  MyWidget datas;

  SelectedCard({Key? key,required this.datas}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,//for getting content to he center
          children: [
            Expanded(
                child:Icon(datas.icon,size: 50,),
                ),
            Text(datas.title,style: TextStyle(fontSize: 18),)
          ],
          
        ),
      ),
    );
  }
}
class MyWidget {
  String title;
  IconData icon;
  MyWidget({
   required this.icon,required this.title
  }
      );
}
List datas= [
  MyWidget(icon: Icons.settings, title: "Settings"),
  MyWidget(icon: Icons.copy, title: "Copy"),
  MyWidget(icon: Icons.paste, title: "Paste"),
  MyWidget(icon: Icons.cut, title: "Cut"),
  MyWidget(icon: Icons.remove, title: "Remove"),
  MyWidget(icon: Icons.star_half, title: "Trim"),
  MyWidget(icon: Icons.all_inbox, title: "All"),

];