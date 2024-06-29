import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweetu/screens/login/Loginscreen.dart';
import 'package:sweetu/widgets/Buttons/Button.dart';
import 'package:sweetu/widgets/InputFileds/InputField.dart';




class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  TextEditingController Conpassword= TextEditingController();
  TextEditingController mobileNo= TextEditingController();
  bool? isChecked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 90,),
            Text("Create  Your free Account",
            style: GoogleFonts.satisfy(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 102, 44, 203),
      
            ),
            ),
            const SizedBox(height: 20,),
            RichText(text:TextSpan(text: "Already have an account?  ",
            style:GoogleFonts.satisfy(
              fontSize: 25,
              color:Colors.grey
              ),
            children: [
              TextSpan(text: "Sign in!!",
              style: GoogleFonts.satisfy(
              fontSize: 25,
              color: const Color.fromARGB(255, 102, 44, 203),
            ),
            recognizer: TapGestureRecognizer()..onTap=()=>{
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()))
            }
            )
            ]
            ),
            
            ),
            const SizedBox(height: 20,),
            InputField(
              controller: email,
              hintText: "Enter the Email",
              supportText: "Email",
              inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20,),
            InputField(controller:password , 
              hintText: "Enter Password", 
              supportText: "Password",
              inputType: TextInputType.visiblePassword,),
              const SizedBox(height: 20,),
            InputField(controller:Conpassword , 
              hintText: "Confirm the Password", 
              supportText: "Confirm Password",
              inputType: TextInputType.visiblePassword,),
              const SizedBox(height: 20,),
            InputField(controller: mobileNo,
               hintText: "Enter Mobile Number",
               supportText: "Mobile Number", 
              inputType: TextInputType.number,),
            const SizedBox(height: 20,),
            
            Button(message: "Sign in", onPressed: (){}),
            const SizedBox(height: 90,),
          ],
        ),
      ),
    );
  }
}
