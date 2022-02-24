import 'package:flutter/material.dart';
import 'screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  void initState() {
    print("Hi Init statement s1"); //this will run when the widget is created
  }

  void deactivate() {
    print(
        "Hi deactivate statement for screen1"); //this will run whenrl the widget is destroyed

  }

  Widget build(BuildContext context) {
    print(
        "Hi build statement s1"); //this will run when the widget is displayed on the screen

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 1',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            // backgroundColor: Colors.greenAccent,
          ),),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Go to Second Screen"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onSurface: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.black,
                  // padding: EdgeInsetsGeometry.infinity,
                ),
                onPressed: () { //navigator works as a stack for moving between 2 screens
                  Navigator.push(
                    context, //context means from where we have to go
                    MaterialPageRoute(builder: (context) =>
                        screen2()),); //route provide the way where we have to go
                },
              ),
            ]
        ),
      ),
    );
  }
}
