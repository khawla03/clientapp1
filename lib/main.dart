import 'package:appv1/loginpage.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'screens/first.dart';
import 'screens/second.dart';
import 'screens/third.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'easy relay client app',
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

class _MyHomePageState extends State<MyHomePage> {
    @override
    final PageController _controller = PageController(initialPage: 0);
    Widget build(BuildContext context) {
      return Scaffold(


        body: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: <Widget>[
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
              LoginPage(),
            ]
        ),
      );
    }
  }


