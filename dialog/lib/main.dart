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
      home: AlertWidget(),
    );
  }
}

class AlertWidget extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              //alertdialogwidget(context);
              //textfieldalertdialogwidget(context, _textEditingController);
              /*final feild feildatt = await confirmalertdialogwidget(context);
              print("user selected $feildatt");*/
              final selecttopt option =
                  await selectionoptionalertdialogwidget(context);
              print("option is $option");
            },
            child: Text("Alert dialog"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

alertdialogwidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("click that ok"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      });
}

textfieldalertdialogwidget(
    BuildContext context, TextEditingController textEditingController) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("text feild"),
          content: TextField(
            decoration: InputDecoration(hintText: "enter your name"),
            controller: textEditingController,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
      });
}

enum feild { Confirm, Accept }
Future<feild> confirmalertdialogwidget(BuildContext context) async {
  return showDialog<feild>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("notification"),
          content: Text("cthis is for notification purpose"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(feild.Accept);
              },
              child: Text("Accept"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(feild.Confirm);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      });
}

enum selecttopt { C, Java, Python, Php }
Future<selecttopt> selectionoptionalertdialogwidget(
    BuildContext context) async {
  return showDialog<selecttopt>(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("choose any one"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selecttopt.C);
              },
              child: Text("C"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selecttopt.Java);
              },
              child: Text("JAVA"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selecttopt.Python);
              },
              child: Text("PYTHON"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selecttopt.Php);
              },
              child: Text("PHP"),
            ),
          ],
        );
      });
}
