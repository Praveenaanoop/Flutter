import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginState();
}

class LoginState extends State{
  var formkey=GlobalKey<FormState>();
  RegExp numvalues= RegExp("[0-9]+");
  bool validform=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Email"),
                  icon: Icon(Icons.mail)
                ),
                validator: (input){
                  if(input!.isEmpty || numvalues.hasMatch(input)){
                    return "Please fill all the field";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.lock)
                ),
                validator: (input){
                  if(input!.isEmpty){
                    return "Please fill all the field";
                  }
                  return null;
                },
              ),

              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    onPressed: (){
                      if(formkey.currentState!.validate()){


                      setState(() {
                        validform=true;
                      });
                          }
                      else
                        {
                          setState(() {
                            validform=false;
                          });
                        }

                    },
                    child: Text("Login"),),
              ),
              Text(validform?"Success":"Emptyfield"),
            ],
          ),

        ),
      ),
    );
  }
}