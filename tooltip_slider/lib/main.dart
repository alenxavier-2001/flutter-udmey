import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: ImageSlider(),
      //home: Slider_Widget(),
      //home: tooltip_widget(),
    );
  }
}

// ignore: camel_case_types
class tooltip_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Tooltip(
          waitDuration: Duration(seconds: 3),
          showDuration: Duration(seconds: 5),
          message: "set alarm",
          textStyle:
              TextStyle(fontSize: 25.0, backgroundColor: Colors.redAccent),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.circular(20.0)),
          child: ElevatedButton(
            child: Icon(
              Icons.alarm,
              size: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}

class Slider_Widget extends StatefulWidget {
  @override
  _Slider_WidgetState createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            child: Icon(Icons.volume_up),
            padding: EdgeInsets.only(left: 20),
          ),
          Expanded(
              child: Slider(
            value: _value.toDouble(),
            max: 20.0,
            min: 1,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            label: "set up Volume",
            onChanged: (double newvalue) {
              setState(() {
                _value = newvalue.round();
              });
            },
          ))
        ],
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: imagesilder(context),
      constraints: BoxConstraints.expand(
        height: 200,
      ),
    );
  }

  Swiper imagesilder(BuildContext context) {
    return new Swiper(
      itemCount: 10,
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
            "https://imgd.aeplcdn.com/0x0/cw/ec/35042/Land-Rover-Range-Rover-Sport-Exterior-151686.jpg?v=20191503160034");
      },
    );
  }
}
