import 'package:flutter/material.dart';

import 'home_page.dart';
class LogIn extends StatefulWidget {
  LogIn({super.key});



  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
 final TextEditingController _emailController = TextEditingController();

 final TextEditingController _passwordController = TextEditingController();
 bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,

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
                  keyboardType: TextInputType.text,
                  controller: _passwordController,
                  obscureText: isShow,
                    style: TextStyle(fontSize: 20,color: Colors.red),
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: InkWell(
                            onTap:(){
                              setState(() {
                                isShow = !isShow;
                              });
                            },
                            child: isShow? Icon(Icons.visibility): Icon(Icons.visibility_off)),
                        // suffixIcon: Icon(Icons.email),
                        // icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))

                    )

                ),
                SizedBox(height: 20,),
                CircularProgressIndicator(),
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
        ),
      ),
    );
  }
}
