import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sweetu/widgets/Bottom%20and%20top%20bars/AppBar.dart';
import 'package:sweetu/widgets/CircularImage/circularImage.dart';
import 'package:sweetu/widgets/Text/SectionHeader.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(showbackArrow: true,
      title: Text('Profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(radius: 40, imgString: "assets/images/profileimg.png",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextButton(onPressed: (){}, child: Text("Change Profile Image")),
                      Icon(Iconsax.edit, size: 20,)
                      ],
                    )
                    
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              const Divider(thickness:2,color: Colors.black,),
              const SizedBox(height: 16,),
              SectionHeader(title: "Profile Information", showActionButton: false,),
              const SizedBox(height: 16,),
              CProfileMenu(title: "Name",value: "Rehan Qazi",onTap: (){},),
              SizedBox(height: 12,),
              CProfileMenu(title: "UserName",value: "Rehanqazi04",onTap: (){},),
              const SizedBox(height: 16,),
              const Divider(thickness:2,color: Colors.black,),
              SectionHeader(title: "Personal Information", showActionButton: false,),
              const SizedBox(height: 16,),
              SizedBox(height: 12,),
              CProfileMenu(title: "Email Id",value: "rehanqazi09@gmail.com",onTap: (){},),
              SizedBox(height: 12,),
              CProfileMenu(title: "Phone Number",value: "+91 9132488482",onTap: (){},),
              SizedBox(height: 12,),
              CProfileMenu(title: "DoB",value: "04/03/2000",onTap: (){},),

              SizedBox(height: 12,),
              CProfileMenu(title: "Gender",value: "Male",onTap: (){},),
              
              
            ]
            
          ),
        ),
      )
    );
  }
}

class CProfileMenu extends StatelessWidget {
  const CProfileMenu({
    super.key,
    required this.title,
    required this.value,
    this.onTap,
  });
  final String title;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(flex:3,child: Text(title,style: TextStyle(fontSize: 18,color: Colors.black54),overflow:TextOverflow.ellipsis,)),
          Expanded(flex:5,child: Text(value,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,)),
          Expanded(child: Icon(Iconsax.arrow_right_25, size: 25,))
        ],
      ),
    );
  }
}