import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: firstScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => firstScreen(),
        '/second': (context) => Second(),
      },
    );
  }
}

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigation And routing"),
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
          child: Text("Second page"),
          onPressed: () {
            /* Navigator.push(
                context, MaterialPageRoute(builder: (context) => Second()));*/

            // Second Method
            Navigator.pushNamed(context, '/second');
          },
        ),
      )),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigation And routing  2"),
      ),
      body: Container(
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
              child: Text("First page"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )),
    );
  }
}
