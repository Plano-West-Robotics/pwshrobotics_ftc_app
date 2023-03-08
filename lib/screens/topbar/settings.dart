import 'package:flutter/material.dart';
import 'package:pwshrobotics_ftc_app/main.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextButton(onPressed: () {},child: const Text('Switch mode')),
                        TextButton(onPressed: () {},child: const Text('About'))
                      ],
                    )
                  ),
                );
              }
          );
        },
        icon: const Icon(Icons.settings));
  }
}

/*
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => showDialog<String>(
            context: context,
            builder: (context) => AlertDialog(
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextButton(onPressed: () {},child: const Text('Switch mode')),
                  TextButton(onPressed: () {},child: const Text('About'))
                ],
              )
 //             actions: <Widget>[TextButton(onPressed: () => Navigator.pop(context, 'Done'), child: const Text('Done'))],
            )
        ),
        icon: const Icon(Icons.settings));
  }
}
 */