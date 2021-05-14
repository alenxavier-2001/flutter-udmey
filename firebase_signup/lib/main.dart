import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_signup/signin.dart';
import 'package:firebase_signup/signup.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(("Firebase SignUp")),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: ElevatedButton(
                child: Text("Sign UP"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUP()));
                },
              ),
            ),
          ),
          Container(
            child: Center(
              child: ElevatedButton(
                child: Text("Sign In"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Sign()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
