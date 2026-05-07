import 'package:everning_thu/Screen/fovorit_screen.dart';
import 'package:everning_thu/Screen/home_screen.dart';

import 'package:flutter/material.dart';

import 'Screen/profile_screen.dart';
import 'Screen/setting_screen.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Widget> _pages = [HomeScreen(),FovoritScreen(),SettingScreen(),ProfileScreen()];
   int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: buildAppBar(context),
        // drawer: buildDrawer(),
        endDrawer: Drawer(),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },

          iconSize: 30,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          selectedItemColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            elevation: 10,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: "Favorit"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Setting"),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile")]),
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
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
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

  AppBar buildAppBar(BuildContext context) {
    return AppBar(

      leading: IconButton(onPressed: (){
        // _scaffoldKey.currentState!.openDrawer();
        Navigator.pop(context);
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












}

