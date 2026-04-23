
// import 'package:flutter/gestures.dart';
import 'package:everning_thu/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final imagUrl =
      "https://img.freepik.com/free-photo/beautiful-cherry-blossoms-trees-blooming-spring_335224-878.jpg?semt=ais_incoming&w=740&q=80";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage());
  }


}
