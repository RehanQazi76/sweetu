import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar(
      {super.key,
      this.title,
      this.ShowbackArrow=false,
      this.leadingIcon,
      this.actions,
      this.leadikngOnPressed});

  final Widget? title;
  final bool ShowbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadikngOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: title,
      titleTextStyle: const TextStyle(color: Colors.black),
      automaticallyImplyLeading: false,
      leading: ShowbackArrow
          ? IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left))
          :leadingIcon!=null? IconButton(onPressed: leadikngOnPressed, icon: Icon(leadingIcon)):null,
          actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
