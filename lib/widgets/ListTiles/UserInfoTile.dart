
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../CircularImage/circularImage.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        imgString: 'assets/images/profileimg.png',
        radius: 35,
        ),
        title: Text("Rehan Qazi", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),),
        subtitle: Text("Rehanqaz07@gmail.com", style: TextStyle(color: Colors.white, fontSize: 15,)),
        trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit ,color: Colors.white,)),
    );
  }
}