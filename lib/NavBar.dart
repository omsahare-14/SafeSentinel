// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:getlocation/add_contacts.dart';
import 'package:getlocation/contacts_page.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  get latitude => null;

  get longitude => null;

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
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddContactsPage()))
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.tips_and_updates),
            title: Text("Tip of the Day"),
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
              onTap: () async {
                final Uri googleMapsUri = Uri.parse(
                    'https://www.google.com/maps/search/?api=1&query=police+station&query=${latitude},${longitude}');
                if (await canLaunchUrl(googleMapsUri)) {
                  launchUrl(googleMapsUri);
                } else {
                  throw 'Could not launch $googleMapsUri';
                }
              }),
          ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text("Locate Hospital"),
              onTap: () async {
                final Uri googleMapsUri = Uri.parse(
                    'https://www.google.com/maps/search/?api=1&query=hospital&query=${latitude},${longitude}');
                if (await canLaunchUrl(googleMapsUri)) {
                  launchUrl(googleMapsUri);
                } else {
                  throw 'Could not launch $googleMapsUri';
                }
              }),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () => exit(0),
          ),
        ],
      ),
    );
  }
}
