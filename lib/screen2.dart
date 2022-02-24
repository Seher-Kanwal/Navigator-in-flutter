import 'package:flutter/material.dart';
class screen2 extends StatefulWidget{
  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  void initState()
  {
    print("Hi Init statement"); //this will run when the widget is created
  }
  void deactivate()
  {
    print("Hi deactivate statement"); //this will run whenrl the widget is destroyed
  }
  Widget build(BuildContext context) {
    print("Hi build statement"); //this will run when the widget is displayed on the screen
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
       title:const Text('Screen 2',
         style: TextStyle(
           fontSize: 20.0,
           fontWeight: FontWeight.bold,
           // backgroundColor: Colors.greenAccent,
         ),),
     ),
     body: Center(
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             child:const Text("Return to first Screen"),
             style: ElevatedButton.styleFrom(
               primary: Colors.red,
               onSurface: Colors.white,
               elevation: 5,
               shadowColor: Colors.black,
               // padding: EdgeInsetsGeometry.infinity,
             ),
             onPressed: () {
               Navigator.pop(context); //this will remove the top widget from stack
             }, //due to context this widget pointing to itself
           ),
           ElevatedButton(
             child:const Text("Rounded Button"),
             style: ElevatedButton.styleFrom(
               primary: Colors.teal, // butt
               onPrimary: Colors.black, //text color
             ),

             onPressed: () {  },
           ),
           ElevatedButton(
             child: Container(
               // alignment: EdgeInsets.all(5),
               // padding: EdgeInsets.all(10),
               // height: 200,
               width: 800,
               decoration:const BoxDecoration(
                   gradient:LinearGradient(colors: <Color>[
                     Color(0xFF0D47A1),
                     Color(0xFF1976D2),
                     Color(0xFF42A5F5),
                   ])
               ),
               child:const  Center(child: Text("Hello ",
                 style: TextStyle(
                   fontSize: 20,
                   //fontWeight: FontWeight.bold,
                 ),),
               ),
             ),
             onPressed: () {  },
           )
         ],
       ),
     ),
   );
  }
}