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
            Expanded(flex:6,child: Container(color: Colors.green)),
            Expanded(flex:1, child:Text('Welcome to the',style: TextStyle(fontSize: 20))),
            Expanded(flex:2,child: Container(color: Colors.green)),
            Text('All-In-One FTC App',style: TextStyle(fontSize: 30)),
            Expanded(flex:2,child: Container(color: Colors.green)),
            Text('created by',style: TextStyle(fontSize: 20)),
            Expanded(flex:6,child: Container(color: Colors.green)),
            Text('Plano West Robotics',style: TextStyle(fontSize: 24)),
            Expanded(flex:1,child: Container(color: Colors.green)),
            Text('Team #14523: Free of Charge',style: TextStyle(fontSize: 16)),
            Expanded(flex:1,child: Container(color: Colors.green)),
            Text('and',style: TextStyle(fontSize: 16)),
            Expanded(flex:1,child: Container(color: Colors.green)),
            Text('Team #12977: Rust in Peace',style: TextStyle(fontSize: 16)),
            Expanded(flex:6,child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}