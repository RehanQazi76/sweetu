
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../clippers/BottomCurve.dart';
import '../../utils/constants.dart';

class CustomBottomCurve extends StatelessWidget {
  const CustomBottomCurve({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
     clipper: ClipperBottomInveredCurve(),
     child:SizedBox(
      
       child: Container(
          padding: const EdgeInsets.all(0),
          
        color: ColorConstants.kpurple,
        child: Stack(
         children: [
        
           Positioned(top:-150,right: -250 ,child: Container(width: 400,height: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: Colors.white.withOpacity(0.1)),),),
           Positioned(top:100,right: -300 ,child: Container(width: 400,height: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: Colors.white.withOpacity(0.1)),),),
           child,
        ]),
       ),
     ),  
     
     );
  }
}