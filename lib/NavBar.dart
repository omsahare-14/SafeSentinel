import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Welcome to the Security App"),
              accountEmail: Text("Don't worry you are safe now!")),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Edit Emergency Contacts"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.tips_and_updates),
            title: Text("Tip of the Day"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_police),
            title: Text("Locate Police Station"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text("Locate Hospital"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
