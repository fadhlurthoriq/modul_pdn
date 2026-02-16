import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
     backgroundColor: Theme.of(context).colorScheme.surface,
     child: Column(
      children: [
        Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.primary,
                  size: 40,
                )
              )
            ),
            
            // Home
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
            ),

            // Settings
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ),

            // Logout
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),
                onTap: () {},
              ),
            ),
          ],
        )
      ],
     ),
    );
  }
}