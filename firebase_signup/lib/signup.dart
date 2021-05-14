import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signup/signin.dart';
import 'package:flutter/material.dart';

class SignUP extends StatelessWidget {
  TextEditingController _email = new TextEditingController();
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<void> signup() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _email.text, password: _password.text);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: " Enter User name",
                  hintText: "UserName",
                ),
                controller: _username,
              ),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
            ),
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
                  signup();
                },
                child: Text("Sign Up"),
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Sign()));
                },
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
