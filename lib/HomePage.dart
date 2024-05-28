import 'package:first_app_flutter/ContactPage.dart';
import 'package:flutter/material.dart';

import 'Widgets/CustomScaffold.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Home Page",
      body: Text("Le contenu de la page ENTIER"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
