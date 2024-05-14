
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textbutton extends StatelessWidget {
   const Textbutton({super.key, 
    required this.message,
    required this.onPressed,
  });
  final String message;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, 
    child: Text(message,
    style: GoogleFonts.satisfy(
      fontSize: 25,
      color: const Color.fromARGB(255, 102, 44, 203)
    ),
    )
    );
  }
}