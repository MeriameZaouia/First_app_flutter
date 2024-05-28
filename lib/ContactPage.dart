import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Widgets/CustomScaffold.dart';

class ContactPage extends StatefulWidget {


  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<String> contacts=[];
  TextEditingController textController=new TextEditingController();
  void addToList(){
     contacts.add(textController.text);
  }

  void deleteItem(index){
    contacts.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Contacts",
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),

              ),
            ),
            MaterialButton(
              onPressed: (){
              setState(() {
                addToList();
                textController.clear();
              });},
            color: Colors.amber,
            child: Text("Ajouter"),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        title: Text(contacts[index]),
                        leading: CircleAvatar(
                          child: Text(contacts[index].substring(0,1).toUpperCase()),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: (){
                              setState(() {
                                deleteItem(index);
                              });

                          },
                        ),
                      ),

                      elevation: 5,
                    );
                  },
              ),
            )
          ],
        ),
      )

    );

  }
}
