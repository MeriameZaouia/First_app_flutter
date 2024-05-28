import 'package:flutter/material.dart';

import '../ContactPage.dart';
import '../HomePage.dart';

List<Widget> buildDrawerItems(BuildContext context) {
  return [
    DrawerHeader(
      child: CircleAvatar(
        radius: 200,
        backgroundImage: AssetImage("assets/photo.jpg"),
      ),
    ),
    ListTile(
      title: Text("Home", style: TextStyle(fontSize: 25)),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      leading: Icon(Icons.home),
    ),
    ListTile(
      title: Text("Contacts", style: TextStyle(fontSize: 25)),
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ContactPage()),
        );
      },
      leading: Icon(Icons.contacts),
    ),
    ListTile(
      title: Text("Meteo", style: TextStyle(fontSize: 25)),
      onTap: () {

      },
      leading: Icon(Icons.sunny_snowing),
    ),
    ListTile(
      title: Text("Chatbot", style: TextStyle(fontSize: 25)),
      onTap: () {

      },
      leading: Icon(Icons.chat),
    ),
    ListTile(
      title: Text("Mask Detection", style: TextStyle(fontSize: 25)),
      onTap: () {

      },
      leading: Icon(Icons.check),
    ),
  ];
}
