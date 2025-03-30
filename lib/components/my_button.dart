import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({
    super.key, 
    this.onTap, 
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin:const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.deepPurpleAccent[100]//add decoration color to container
          ),
        child: Center(
          child: Text(text, 
          style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 20),))), //add text color 
      )
      );
  }
}