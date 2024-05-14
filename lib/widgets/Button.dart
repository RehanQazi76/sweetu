import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Button extends StatelessWidget {
  const Button({super.key, 
    required this.message,
    required this.onPressed
  });
  final String message;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, 
    style:ElevatedButton.styleFrom(
      backgroundColor:const Color.fromARGB(255, 102, 44, 203),
      fixedSize:const Size(250,60) ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      )
      
    ),
    child: Text(message,
    style: GoogleFonts.satisfy(
      fontSize: 20,
      
    ),
    ));
  }
}
