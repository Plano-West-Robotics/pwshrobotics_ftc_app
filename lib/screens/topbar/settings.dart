import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              content: Column(
                children: [
                  TextButton(onPressed: () {},child: Text('Switch mode'),),
                  TextButton(onPressed: () {},child: Text('About'),)
                ],
              )
 //             actions: <Widget>[TextButton(onPressed: () => Navigator.pop(context, 'Done'), child: const Text('Done'))],
            )
        ),
        icon: Icon(Icons.settings));
  }
}