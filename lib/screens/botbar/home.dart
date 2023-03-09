import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Welcome to the',style: TextStyle(fontSize: 16)),
            Text('All-In-One FTC App',style: TextStyle(fontSize: 26)),
            Text('created by',style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}