import 'package:flutter/material.dart';
import 'package:navigator/screen0.dart';
import 'package:navigator/screen1.dart';
import 'package:navigator/screen2.dart';

void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //as we are working with map so we have to use its own widget
      //we use map/route when we have to navigate to many screens
     home: screen1(),
      //initialRoute: '/',
      //routes: {
        // '/' will create the first route to the screen

        //'/':(context)=> screen0(),
        //'first':(context)=> screen1(),
        //'second':(context)=> screen2(),
     //},
    );
  }
}





