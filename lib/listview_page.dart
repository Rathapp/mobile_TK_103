import 'package:everning_thu/models/person_model.dart';
import 'package:everning_thu/pages/person_detail.dart';
import 'package:flutter/material.dart';

import 'data/person_data.dart';
class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          final person = persons[index];
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetail(person: Person.fromJson(person),)));
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(person["image"]),
            ),
            title: Text(person["name"]),
            subtitle: Text(person["job"]),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Text("18:23"),
              Text("23")],
            ),
          );
        }
      )
    );
  }
}
