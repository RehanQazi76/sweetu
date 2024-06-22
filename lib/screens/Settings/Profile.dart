import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sweetu/widgets/AppBar.dart';

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
        child: Column(
          
        ),
      )
    );
  }
}