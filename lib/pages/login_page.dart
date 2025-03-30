// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ielts_ai/components/my_button.dart';
import 'package:ielts_ai/components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //texteditingcontrollers for email and password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            //Welcome back text
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 8),
              child: Text("Welcome Back !", 
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.w600))),
            ),
            //const SizedBox(height: 12,),
             Padding(
               padding: const EdgeInsets.only(top: 8, left: 8),
               child: Text("Enter your details", 
               style: GoogleFonts.poppins(
                 textStyle: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w300))),
             ),
        
            const SizedBox(height: 40,),
        
            //TextField for email, texteditingcontroller for email reqd
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text("Enter your email", 
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w300)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextField(controller: emailController, hintText: "abc@example.com", obscureText: false),
            ),

            const SizedBox(height: 15,),
        
        
            //Textfield for password, texteditingcontroller for password reqd
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 5.0),
              child: Text("Enter your Password",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w300)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextField(controller: passwordController, hintText: "ex@mpleP@ssw0rd", obscureText: true),
            ),
            const SizedBox(height: 35),
        
            //sign in button
            MyButton(text: "Sign In")
        
            //sign in with google
        
            //acoount does not exist, register
        
          ],
        ),
      ),
    );
  }
}