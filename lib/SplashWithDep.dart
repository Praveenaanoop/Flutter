import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.indigo),
  home: Splash(),
  debugShowCheckedModeBanner: false,));
}

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return SplashScreen(
  seconds: 5,
  navigateAfterSeconds: new HomeScreen2(),
  image: Image.asset("assets/images/flower.jpg"),
  loaderColor: Colors.yellowAccent,
  loadingText: Text("Loading"),
  title: Text("My Splashhhhh"),
);
  }

}
class HomeScreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPLASH"),
      ),

      body: Center(child: Text("Welcomee!!!!!")),
    );
  }

}