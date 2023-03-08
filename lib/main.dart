import 'package:flutter/material.dart';
import 'package:dynamic_themes/dynamic_themes.dart';
import './ui/colors.dart';
import './screens/all_screens.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        themeCollection: themeCollection,
        defaultThemeId: AppThemes.LightBlue,
        builder: (context,theme){
          return MaterialApp(
            title: 'Plano West Robotics',
            theme: theme,
            home: Bars()
          );
        }
    );
  }
}

class Bars extends StatefulWidget {
  @override
  _BarsState createState() => _BarsState();
}

class _BarsState extends State<Bars> {
  int _currentIndex = 0;
  String _title = 'FTC All-In-One';
  final List<Widget> children = [
      Home(),
      Scorer(),
      Notes(),
      Search(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedFontSize: 15,
        backgroundColor: Colors.blue[600],
        selectedItemColor: Colors.grey[200],
        unselectedItemColor: Colors.grey[400],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.scoreboard), label: 'Scoring'),
          BottomNavigationBarItem(icon: Icon(Icons.notes), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                {
                  _title = 'Home';
                }
                break;
              case 1:
                {
                  _title = 'Scoring';
                }
                break;
              case 2:
                {
                  _title = 'Notes';
                }
                break;
              case 3:
                {
                  _title = 'Search';
                }
                break;
            }
          });
        },
      ),
      appBar: AppBar(
        title: const Text('Plano West Robotics'),
        backgroundColor: Colors.blue[600],
        leading: Image.asset('assets/images/logos/pwsh-robotics.png'),
        actions: <Widget>[
          Settings()
        ],
      ),
    );
  }
}