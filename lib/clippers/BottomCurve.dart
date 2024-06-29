import 'package:flutter/cupertino.dart';

class ClipperBottomInveredCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    double w=size.width;
    double h =size.height;
    final path = Path();
    path.lineTo(0, h);
    // first curve (left side)
    final fisrtCurve= Offset(0, h-30);
    final lastCurve= Offset(30, h-30);
    path.quadraticBezierTo(fisrtCurve.dx, fisrtCurve.dy, lastCurve.dx,lastCurve.dy);
    //striaght line
   path.lineTo(w-30,h-30 );
    // second curve (right side)
      final fisrtCurve2= Offset(w, h-30);
    final lastCurve2= Offset(w, h);
    path.quadraticBezierTo(fisrtCurve2.dx,fisrtCurve2.dy,lastCurve2.dx,lastCurve2.dy);


    path.lineTo(w, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}