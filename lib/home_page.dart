import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: buildAppBar(),
        drawer: buildDrawer(),
        endDrawer: Drawer(),
        body: _buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            elevation: 10,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Home")]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.indigoAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add,color: Colors.white),
      ),
    );

  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.indigoAccent,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,size: 30,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,size: 30)),
          SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,size: 30)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white,size: 30))
        ],
      ),
    );
  }

  Drawer buildDrawer() => Drawer(
    backgroundColor: Colors.indigoAccent,
    child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
                child: Row(
                  children: [
                   Container(
                     width: 60,
                     height: 60,
                     clipBehavior: Clip.hardEdge,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(60),
                       color: Colors.blue,
                       border: Border.all(color: Colors.white,width: 2),
                       image: DecorationImage(image: AssetImage("assets/images/ddd.jpeg"),
                         fit: BoxFit.cover,
                       )

                   )
                     // child:  Image.asset("assets/images/sss.jpg",
                     //   width: 60,
                     //   height: 60,
                     //   fit: BoxFit.cover,),
                   ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Hello, Ratha",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight(700)),),
                        Text("View profile"),
                      ],
                    )]
                )),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Setting",style: TextStyle(color: Colors.white)),
              // trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Setting",style: TextStyle(color: Colors.white)),
              // trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Setting",style: TextStyle(color: Colors.white)),
              // trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
              onTap: (){},
            ),

          ],
        )
    ),
  );

  AppBar buildAppBar() {
    return AppBar(

      leading: IconButton(onPressed: (){
        _scaffoldKey.currentState!.openDrawer();
      }, icon: Icon(Icons.favorite,color: Colors.green,)),
      backgroundColor: Colors.indigoAccent,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.blue,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.media_bluetooth_off,color: Colors.deepOrange,size: 30,)),
        IconButton(onPressed: (){
          _scaffoldKey.currentState!.openEndDrawer();
        }, icon: Icon(Icons.settings,color: Colors.green,))
      ],
      title: Text("Home Page",
        style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight(600),
            fontSize: 23),),
      // centerTitle: true,
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
            // Padding(
            //   padding: EdgeInsetsGeometry.only(left: 5, right: 5),
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         _buildFirstStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //         _buildStory(),
            //       ],
            //     ),
            //   ),
            // ),
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
      height: 300,
      fit: BoxFit.cover,
    );
  }
}
