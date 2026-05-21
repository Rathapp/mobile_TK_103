import 'package:everning_thu/models/person_model.dart';
import 'package:flutter/material.dart';
class PersonDetail extends StatelessWidget {
  const PersonDetail({required this.person,super.key});
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile detail"),centerTitle: true,),
      body: Padding(padding: EdgeInsetsGeometry.all(10),
      child: Column(
        children: [
          Image.network(person.image),
          Text(person.name),
          Text(person.job),
          Text(person.age.toString())
        ]
      ),),
    );
  }
}
