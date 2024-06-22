import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweetu/widgets/NavigationBar.dart';
import 'package:sweetu/screens/login/Authentication/Signup.dart';
import 'package:sweetu/widgets/Buttons/Button.dart';
import 'package:sweetu/widgets/Textbutton.dart';


class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  bool? isChecked= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 90,),
            Text("Login to Your Account",
            style: GoogleFonts.satisfy(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 102, 44, 203),
      
            ),
            ),
            const SizedBox(height: 30,),
            RichText(text:TextSpan(text: "Don't have an account?",
            style:GoogleFonts.satisfy(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              ),
            children: [
              TextSpan(text: "Create it!!",
              style: GoogleFonts.satisfy(
              fontSize: 25,
              color: const Color.fromARGB(255, 102, 44, 203),
            ),
            recognizer: TapGestureRecognizer()..onTap=()=>{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()))
            }
            )
            ]
            ),
            
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration:const InputDecoration(
                  helperText: "email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  hintText: "Enter the email",
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                decoration:const InputDecoration(
                  helperText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  hintText: "Enter the password",
                ),
              ),
            ),
      
            const SizedBox(height: 20,),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked, 
                  
                  fillColor: MaterialStateProperty.all(const Color.fromARGB(255, 102, 44, 203)),
                  onChanged: (check){
                }),
                Text("Remember me ",
                  style:GoogleFonts.satisfy(
              color: const Color.fromARGB(255, 102, 44, 203),
      
                ),
                )
      
              ],
            ),
            const SizedBox(height: 20,),
            Button(message: "Sign in", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Navigation()));
            }),
            const SizedBox(height: 20,),
            Textbutton(message: "Forgot Password", onPressed: (){})
          ],
        ),
      ),
    );
  }
}