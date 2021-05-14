import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { Male, Female, Prefer_not_to_say }

class _MyHomePageState extends State<MyHomePage> {
  bool firstbox = false;
  bool secondbox = false;
  bool thirdbox = true;
  Gender gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox & Radio BUtton"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("What is Your Hobby"),
            Row(
              children: [
                Text("painting"),
                Checkbox(
                  value: this.firstbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.firstbox = value;
                    });
                  },
                ),
                Text("football"),
                Checkbox(
                  value: this.secondbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.secondbox = value;
                    });
                  },
                ),
                Text("playing"),
                Checkbox(
                  value: this.thirdbox,
                  onChanged: (bool value) {
                    setState(() {
                      this.thirdbox = value;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile(
              title: Text("Hey whts uop"),
              subtitle: Text("Fine!!"),
              secondary: Icon(Icons.home_outlined),
              value: this.firstbox,
              onChanged: (bool value) {
                setState(() {
                  this.firstbox = value;
                });
              },
            ),
            ListTile(
              title: Text("Male"),
              leading: Radio(
                value: Gender.Male,
                groupValue: gender,
                onChanged: (Gender value) {
                  setState(() {
                    this.gender = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Femaale"),
              leading: Radio(
                value: Gender.Female,
                groupValue: gender,
                onChanged: (Gender value) {
                  setState(() {
                    this.gender = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Prefer_not_to_say"),
              leading: Radio(
                value: Gender.Prefer_not_to_say,
                groupValue: gender,
                onChanged: (Gender value) {
                  setState(() {
                    this.gender = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
