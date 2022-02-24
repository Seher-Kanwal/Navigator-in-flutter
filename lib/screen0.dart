import 'package:flutter/material.dart';

class screen0 extends StatefulWidget {
  const screen0({Key? key}) : super(key: key);

  @override
  _screen0State createState() => _screen0State();

}

class _screen0State extends State<screen0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen0",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: const Text("Go to first Screen"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onSurface: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                // padding: EdgeInsetsGeometry.infinity,
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/first');
              }, //due to context this widget pointing to itself
            ),
            ElevatedButton(
              child: const Text("Go to second Screen"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onSurface: Colors.white,
                elevation: 5,
                shadowColor: Colors.black,
                // padding: EdgeInsetsGeometry.infinity,
              ),
              onPressed: () {
                //  Navigator.pushNamed(context, '/second');
              }, //due to context this widget pointing to itself
            ),
          ],
        ),
      ),
    );
  }
}
