import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      shadowColor: Colors.purple,
      backgroundColor: Colors.lightGreen,
      title: Text('Title'),
    );
    return MaterialApp(
        // theme: ThemeData(primaryColor: Colors.green),
        home: Scaffold(
      appBar: appBar2,
      body: Center(
        child: Text('Body'),
      ),
    ));
  }
}


// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

