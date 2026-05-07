
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return SafeArea(
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

            Spacer(),
            _buildImage(),
            SizedBox(height: 20)
            // Padding(
            //   padding: EdgeInsetsGeometry.all(30),
            //   child: Text(
            //     "After a month and a half of spiraling conflict in the Middle East, the United States and Iran agreed to a two-week ceasefire on Tuesday – less than two hours before US President Donald Trump s deadline, after which he had promised to wipe out a whole civilizatio",
            //     textAlign: TextAlign.justify,
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
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

  Widget _buildImage() {
    return Image.asset(
      "assets/images/ddd.jpeg",
      width: 300,
      height: 300,
      fit: BoxFit.cover,
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
}
