import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweetu/screens/login/LoginScreen.dart';
import 'package:sweetu/screens/login/Signup.dart';
import 'package:sweetu/widgets/Button.dart';
import 'package:sweetu/widgets/Textbutton.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,width: double.infinity,),
            Image.asset("assets/images/logo.png",
            height: 300,
            width: 300,
            ),
            
            Column(
              children: [
                Text("Welcome",
            style: GoogleFonts.satisfy(
              fontSize: 55,
              color: const Color.fromARGB(255, 102, 44, 203)
            ),
            ),
            Text("to",
            style: GoogleFonts.satisfy(
              fontSize: 50,
              color: const Color.fromARGB(255, 102, 44, 203)
            ),),
            Text("Sweetu",
            style: GoogleFonts.satisfy(
              fontSize: 50,
              color: const Color.fromARGB(255, 102, 44, 203)
            ),
            ),
              ],
            ),
            Button(message: "Sign In ", 
            onPressed: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreeen()));
            }),
            Textbutton(message: "Create an account", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUp())));
            },)
          ],
        ),
      ),
    );
  }
}
