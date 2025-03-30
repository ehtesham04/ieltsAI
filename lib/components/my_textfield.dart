import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.obscureText
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.top,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder:  OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15)
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(color: Colors.grey,fontSize: 20, fontWeight: FontWeight.w200))
      ),
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w200)
      )

    );
  }
}