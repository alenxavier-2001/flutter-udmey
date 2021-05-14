import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = '0';

  String _output = "0";

  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  operation(String number) {
    if (number == "c") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (number == "-" ||
        number == "+" ||
        number == "*" ||
        number == "/") {
      num1 = double.parse(output);
      operand = number;
      _output = "0";
    } else if (number == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + number;
    }
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget button(String number) {
    return Expanded(
      child: RawMaterialButton(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          operation(number);
        },
        shape: Border.all(color: Colors.black, width: 2),
        fillColor: Colors.black12,
        padding: EdgeInsets.all(30.0),
        splashColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    output,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  button("9"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("7"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("/"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("4"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("6"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("*"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("-"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("0"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("c"),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("="),
                  SizedBox(
                    width: 5.0,
                  ),
                  button("+"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
