import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';


class Settings{
  double radius = 20;

  showSettings(BuildContext context){
    final themeID = DynamicTheme.of(context)!.themeId;
    final isDark = themeID == 1;
    final themeWord = (!isDark ? 'dark' : 'light');
    final themeIcon = (!isDark ? Icons.dark_mode : Icons.light_mode);

    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(themeIcon),
                title: Text('Switch to ' + themeWord + ' mode'),
                onTap: (){
                  Navigator.pop(context);
                  DynamicTheme.of(context)?.setTheme(isDark ? 0 : 1 );
                }
              ),
              AboutListTile(
                icon: Icon(Icons.settings),
                applicationVersion: '1.0.0',
                aboutBoxChildren: <Widget>[
                  Text('idk')
                ],
              )
            ],
          )
        );
      }
    );
/*
    return IconButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
              context: context,
              builder: (BuildContext context) {
                return Wrap(
                  //direction: Axis.vertical,
                  children: <Widget>[
                    Row(children: [Icon(Icons.notes),Expanded(child: TextButton(onPressed: () {},child:Text('Switch mode',textAlign: TextAlign.left)))],),
                    TextButton.icon(onPressed: () {},icon: Icon(Icons.notes),label: const Text('About'))
                  ],

                );
              }
          );
        },
        icon: const Icon(Icons.settings));
*/
  }
}

/*
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet<dynamic>(
              context: context,
              builder: (BuildContext context) {
                return Wrap(
                  direction: Axis.vertical,
                  children: <Widget>[
                    TextButton.icon(onPressed: () {},icon: Icon(Icons.notes),label: const Text('Switch mode',textAlign: TextAlign.start,)),
                    TextButton.icon(onPressed: () {},icon: Icon(Icons.notes),label: const Text('About'))
                  ],

                );
              }
          );
        },
        icon: const Icon(Icons.settings));
  }
}
*/


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