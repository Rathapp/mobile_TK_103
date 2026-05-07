
import 'package:flutter/material.dart';

class FovoritScreen extends StatelessWidget {
  const FovoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child:
        Padding(
          padding: EdgeInsetsGeometry.only(left: 5, right: 5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFirstStory(),
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
      ),
    );
  }

  Widget _buildStory() {
    return Container(
      margin: EdgeInsetsGeometry.only(left: 6),
      // clipBehavior: Clip.antiAlias,

      width: 120,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.white70, width: 1),
          image: DecorationImage(image: AssetImage("assets/images/sss.jpg"),
            fit: BoxFit.cover,
          )

      ),

      child: Stack(
        children: [
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
  Widget _buildFirstStory(){
    return Container(
      margin: EdgeInsetsGeometry.only(left: 6),
      clipBehavior: Clip.antiAlias,

      width: 120,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.grey, width: 1),
        // image: DecorationImage(image: AssetImage("assets/images/sss.jpg"),
        //   fit: BoxFit.cover,
        // )

      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/ddd.jpeg",height: 120,fit: BoxFit.cover,),
          Expanded(
            child: Stack(
                clipBehavior: Clip.none,
                children:[
                  Column(
                    children: [
                      Spacer(),
                      Text("Create",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                      Text("story",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,)
                    ],
                  ),

                  Positioned(
                    top: -18,
                    child: Container(
                        padding: EdgeInsetsGeometry.all(2),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Icon(Icons.add,color: Colors.white,size: 30,)
                    ),
                  ),
                ]

            ),
          ),



        ],
      ),
    );

  }
}
