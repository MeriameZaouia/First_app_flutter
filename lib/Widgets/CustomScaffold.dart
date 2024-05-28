import 'package:flutter/material.dart';

import 'buildDrawerItems.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final FloatingActionButton? floatingActionButton;

  const CustomScaffold({
    Key? key,
    required this.title,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.lightBlue, fontSize: 25),
        ),
      ),
      body: Center(child: body),
      floatingActionButton: floatingActionButton,
      drawer: Drawer(
        child: ListView(
          children: buildDrawerItems(context),
        ),
      ),
    );
  }
}
