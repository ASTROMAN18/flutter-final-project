import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
    const LoginPage({super.key}); 
    @override Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
                children: [
                    const SizedBox(
                      height: 40),
                        Icon(Icons.shopping_cart_sharp, size: 100
                        ),
                      const SizedBox(height: 25),
                        Text( "Welcome To The E-Shop",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                          ,)
                          , Text( "Please Sign in to Continue",
                          style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 25),
                          Padding( padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField(
                          decoration: InputDecoration( 
                          enabledBorder: OutlineInputBorder( 
                          borderSide: BorderSide(color: Colors.grey), 
                          ),
                          focusedBorder: OutlineInputBorder( 
                          borderSide: BorderSide(color: Colors.black), 
                          ), 
                          fillColor: Colors.white, filled: true, 
                          hintText: 'Username or Email', 
                          hintStyle: TextStyle(
                          color: Colors.grey),
                          ),
                          ),
                          ),
                          const SizedBox(height: 15),
                          Padding( padding: 
                          const EdgeInsets.symmetric(horizontal: 25.0),
                          child: TextField( decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder( 
                          borderSide: BorderSide(color: Colors.grey), 
                          ),
                          focusedBorder: OutlineInputBorder( borderSide: 
                          BorderSide(color: Colors.black), 
                          ), 
                          fillColor: Colors.white, 
                          filled: true, 
                          hintText: 'Password', 
                          hintStyle: TextStyle(color: Colors.grey), 
                          ), 
                          ), 
                          ), const SizedBox(height: 10), 
                          Text("Forgot Password?", 
                          style: TextStyle(color: Colors.grey)), 
                          const SizedBox(height: 10), 
                          Container( padding: const EdgeInsets.all(25),
                          margin: const EdgeInsets.symmetric(horizontal: 25), 
                          decoration: BoxDecoration( color: Colors.black, 
                          borderRadius: BorderRadius.circular(8), 
                          ), child: const Center( 
                            child: Text( "Sign In", 
                            style: TextStyle( color: Colors.white, 
                            fontWeight: FontWeight.bold, 
                            fontSize: 16, 
                      ), 
                    ), 
                    ),
                    ), const SizedBox(height: 10), 
                    Container( padding: 
                    const EdgeInsets.all(25), 
                    margin: const EdgeInsets.symmetric(horizontal: 25), 
                    decoration: BoxDecoration( 
                    color: Colors.black, 
                    borderRadius: BorderRadius.circular(8), 
                    ), 
                    child: const Center( 
                    child: Text( "Sign Up", 
                    style: TextStyle( color: Colors.white, 
                    fontWeight: FontWeight.bold, fontSize: 16, 
                    ), 
                  ), 
                ), 
              ), 
            ],
          ), 
        ), 
      ), 
    ); 
  } 
}