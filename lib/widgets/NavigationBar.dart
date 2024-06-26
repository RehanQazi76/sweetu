import 'package:flutter/material.dart';
import 'package:sweetu/screens/Cart/Cart.dart';
import 'package:sweetu/screens/HomeScreen.dart';
import 'package:sweetu/screens/Settings/Profile.dart';
import 'package:sweetu/utils/constants.dart';

import '../screens/Settings/Settings.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  int CurrIndex=0;
  final screens=const[HomePage(),  Cart(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[CurrIndex],
      bottomNavigationBar:

      Container(
        width:double.infinity,
        
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorConstants.kpurple,
          borderRadius: BorderRadius.circular(40),
        ),
        child: BottomNavigationBar (
          elevation: 0,
          selectedItemColor: Colors.white,
          backgroundColor: ColorConstants.kpurple,
          currentIndex: CurrIndex,
          onTap: (value){
            setState(() {
              CurrIndex=value;
            });
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
            color: CurrIndex==0?Colors.white:Colors.black), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: CurrIndex==1?Colors.white:Colors.black), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: CurrIndex==2?Colors.white:Colors.black), label: "Profile"),
          ],
        ),
      ),
    );
  }
}