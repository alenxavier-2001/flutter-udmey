import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("progress_snackbar"),
        ),
        //body: Linear_progress_bar(),
        //body: Circular_progres_bar(),
        body: Snack_bar(),
      ),
    );
  }
}

class Linear_progress_bar extends StatefulWidget {
  @override
  _Linear_progress_barState createState() => _Linear_progress_barState();
}

class _Linear_progress_barState extends State<Linear_progress_bar> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(150),
              child: loading
                  ? LinearProgressIndicator()
                  : Text("please click to download!!!"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  loading = !loading;
                });
              },
              child: Text("Click"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              )),
        ],
      ),
    );
  }
}

class Circular_progres_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          backgroundColor: Colors.red,
          strokeWidth: 2,
        ),
      ),
    );
  }
}

class Snack_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text("Snack Bar"),
        onPressed: () {
          final msg = SnackBar(
            content: Text("This is notification"),
            duration: Duration(seconds: 10),
            action: SnackBarAction(
              label: "hello",
              onPressed: () {},
              disabledTextColor: Colors.blue,
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(msg);
        },
      ),
    );
  }
}
