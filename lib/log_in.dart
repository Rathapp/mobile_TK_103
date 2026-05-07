import 'package:flutter/material.dart';

import 'home_page.dart';
class LogIn extends StatelessWidget {
  LogIn({super.key});
 final TextEditingController _emailController = TextEditingController();
 final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              // obscureText: true,
              controller: _emailController,
              style: TextStyle(fontSize: 20,color: Colors.red),
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
                // suffixIcon: Icon(Icons.email),
                // icon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))


              )

            ),
            SizedBox(height: 20,),
            TextField(
              controller: _passwordController,
              obscureText: true,
                style: TextStyle(fontSize: 20,color: Colors.red),
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.visibility),
                    // icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))


                )

            ),
            SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  ),

                  onPressed: (){
                    print(_emailController.text);
                    print(_passwordController.text);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                  },
                  child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 18),)),
            )

          ]
        ),
      ),
    );
  }
}
