

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    Key? key,
    this.imgString,
    this.imgUrl,
    required this.radius,
  }) : super(key: key);

  final String? imgString;
  final String? imgUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: imgUrl == null
          ? AssetImage(imgString!) as ImageProvider
          : NetworkImage(imgUrl!),
      radius: radius,
    );
  }
}


