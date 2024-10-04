import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glance/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      // Appbar
      appBar: AppBar(
        title: Text('Settings'),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Dark Mode'),
            trailing: CupertinoSwitch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isdarkmode,
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggletheme(),
            ),
          )
        ],
      ),
    );
  }
}
