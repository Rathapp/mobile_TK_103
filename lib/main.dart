import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
    return MaterialApp(home: _buildScaffold());
  }

  Widget _buildScaffold() {
    return Scaffold(body: _buildBody());
  }

  Widget _buildStory() {
    return Container(
      margin: EdgeInsetsGeometry.only(left: 6),
      clipBehavior: Clip.hardEdge,

      width: 125,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.white70, width: 1)
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/sss.jpg",
            width: 125,
            height: 200,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 8,
            top: 8,
            child: Container(
              padding: EdgeInsetsGeometry.all(2),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color: Colors.indigoAccent,
                  width: 2,
                ),
              ),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  "assets/images/ddd.jpeg"
                ),
              ),
            ),
          ),
          Positioned(
              left: 8,
              bottom: 5,
              child: Text("Pov Ratha",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight(700)),))
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildRow(),
            Text(
              "Gretting Data",
              style: TextStyle(
                fontSize: 34,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 5, right: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                    _buildStory(),
                  ],
                ),
              ),
            ),
            _buildImage(),
            Padding(
              padding: EdgeInsetsGeometry.all(30),
              child: Text(
                "After a month and a half of spiraling conflict in the Middle East, the United States and Iran agreed to a two-week ceasefire on Tuesday – less than two hours before US President Donald Trump s deadline, after which he had promised to wipe out a whole civilizatio",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        // Icon(CupertinoIcons.heart,color: Colors.amber,size: 56)
        // Image.asset("assets/images/ddd.jpeg", width: 300,height: 200,fit: BoxFit.cover ,),
        // child: Text("Gretting Data",
        //   style: TextStyle(fontSize: 34,color: Colors.red,fontWeight: FontWeight.bold ) ,),
      ),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hello",
          style: TextStyle(
            fontSize: 25,
            color: Colors.green,
            fontWeight: FontWeight(600),
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [_buildIcon(), _buildPosition()],
        ),
      ],
    );
  }

  Positioned _buildPosition() {
    return Positioned(
      top: -8,
      right: -8,
      child: Container(
        width: 25,
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          "3",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight(700),
          ),
        ),
      ),
    );
  }

  Container _buildIcon() {
    return Container(
      height: 56,
      width: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.blueAccent, width: 2),
        color: Colors.grey,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 2)),
        ],

        borderRadius: BorderRadius.circular(56),
      ),
      child: Icon(CupertinoIcons.heart, color: Colors.amber, size: 25),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      "assets/images/ddd.jpeg",
      width: 300,
      height: 500,
      fit: BoxFit.cover,
    );
  }
}
