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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Table_Widget(),
      //home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool switch_state = false;
  var textvalue = "Switch is OFF";
  void display_state(bool value) {
    if (switch_state == false) {
      setState(() {
        switch_state = true;
        textvalue = "Switch is ON";
      });
    } else {
      setState(() {
        switch_state = false;
        textvalue = "Switch is OFF";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switchs & Tables"),
      ),
      body: Column(
        children: [
          Container(
              child: Transform.scale(
            scale: 2,
            child: Switch(
              onChanged: display_state,
              value: switch_state,
              activeColor: Colors.red,
              activeTrackColor: Colors.orange,
              inactiveTrackColor: Colors.blue,
              inactiveThumbColor: Colors.black,
            ),
          )),
          Text("$textvalue"),
        ],
      ),
    );
  }
}

class Table_Widget extends StatefulWidget {
  @override
  _Table_WidgetState createState() => _Table_WidgetState();
}

class _Table_WidgetState extends State<Table_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table_widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(100),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100),
          border: TableBorder.all(
            color: Colors.blue,
            width: 4,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(
              children: [
                Column(
                  children: [Text("Home")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Hello")],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [Text("Home 2")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Hello")],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [Text("Home 3")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Hello")],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [Text("Home 4")],
                ),
                Column(
                  children: [Text("Name")],
                ),
                Column(
                  children: [Text("Hello")],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
