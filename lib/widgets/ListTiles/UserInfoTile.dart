
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../CircularImage/circularImage.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.onPressed,
    required this.imageUrl,
    this.imageString=" ",
  });
  final String userName;
  final String userEmail;
  final String imageUrl;
  final String imageString;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        imgString: imageString,
        radius: 35,
        ),
        title: Text(userName, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
        subtitle: Text(userEmail, style: TextStyle(color: Colors.white, fontSize: 15,)),
        trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit ,color: Colors.white,)),
    );
  }
}