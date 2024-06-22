
import 'package:flutter/material.dart';

class CSettingMenuTile extends StatelessWidget {
  const CSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  });
  final IconData icon;
  final String title;
  final String subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 25,),
      title: Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
      subtitle: Text(subTitle, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
