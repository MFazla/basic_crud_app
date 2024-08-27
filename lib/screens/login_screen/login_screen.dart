import 'package:flutter/material.dart';
import 'package:basic_crud_app/constants/image_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                ImageConstants.logoPng,
                height: 50,
                width: 100,
              ),
            ),


            const Text(
              "Hello Again!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "Welcome back, you've been missed!",
              style:TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 50),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                // ignore: prefer_const_constructors
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            ),

            const SizedBox(height:20),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                // ignore: prefer_const_constructors
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
            ),


            const SizedBox(height: 20),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Login",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
            ),
            ),



          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                " Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          )

          ],
        ))
 
    );
  }
}
