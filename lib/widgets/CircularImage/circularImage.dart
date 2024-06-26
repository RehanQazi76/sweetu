

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key? key,
    this.imgString,
    this.isNetwork=false,
    required this.radius,
  }) : super(key: key);

  final String? imgString;
  final bool isNetwork;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: isNetwork? NetworkImage(imgString!): AssetImage(imgString!) as ImageProvider,
      radius: radius,
    );
  }
}


