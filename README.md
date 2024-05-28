# first_app_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## page home

![image](https://github.com/MeriameZaouia/First_app_flutter/assets/92438936/f8dc1ed4-3911-4475-8870-8d046c79859c)


## page contacts 

Dans mon code, l'état est géré localement à l'intérieur du widget ContactPage en utilisant le setState pour rafraîchir l'interface utilisateur chaque fois qu'un contact est ajouté ou supprimé. Bien que cela fonctionne, cette approche devient rapidement difficile à gérer dans une application plus complexe où l'état doit être partagé entre plusieurs widgets.

![image](https://github.com/MeriameZaouia/First_app_flutter/assets/92438936/23e80938-5cd6-4c4e-95f0-6563d99b5bf6)

## Drawer 
j'ai creer un widget drawer general que j'appelle dans tous les pages en precisant le titre

![image](https://github.com/MeriameZaouia/First_app_flutter/assets/92438936/29bbab5e-9549-48b8-996b-c9c5e6eca929)

```bash
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

```


```bash

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

```



