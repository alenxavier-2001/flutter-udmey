import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Future<void> signin(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _email.text, password: _password.text);
    } catch (e) {
      print(e);
    }
    print("Sign in suces");
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: " Enter User Email",
                hintText: "Email",
              ),
              controller: _email,
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
          ),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: " Enter User Password",
                hintText: "Password",
              ),
              controller: _password,
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                signin(context);
              },
              child: Text("Sign In"),
            ),
          ),
        ],
      )),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
