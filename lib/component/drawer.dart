import 'package:flutter/material.dart';
import 'package:glance/component/my_drawer_tile.dart';
import 'package:glance/pages/settings.dart';

class my_Drawer extends StatelessWidget {
  const my_Drawer({super.key});

// build UI
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // app logo
            Icon(
              Icons.person_2,
              color: Theme.of(context).colorScheme.primaryContainer,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            // home list tile
            MyDrawerTile(
              icon: Icons.home,
              title: 'home',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // profile list tile

            // search list tile
            // MyDrawerTile(
            //   icon: Icons.search,
            //   title: 'Search',
            //   onTap: () {},
            // ),
            // settings list tile
            MyDrawerTile(
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              },
              title: 'Settings',
            ),
            // logout list tile
            MyDrawerTile(
              icon: Icons.logout,
              onTap: () {},
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
