import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar(
      {super.key,
      this.title,
      this.showbackArrow=false,
      this.leadingIcon,
      this.actions,
      this.color =Colors.white,
      this.leadingOnPressed});

  final Widget? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:color ,
      elevation: 0,
      title: title,
      titleTextStyle: const TextStyle(color: Colors.black),
      automaticallyImplyLeading: false,
      leading: showbackArrow? IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Iconsax.arrow_left_24, size: 30,color: Colors.black,))
          :leadingIcon!=null? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
          actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
