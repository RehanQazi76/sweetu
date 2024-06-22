
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {

  const SectionHeader({
    super.key,
    required this.title,
    this.ButtonTitle="view all",
    this.showActionButton=true,
    this.onPressed,
  });
  final String title;
  final String ButtonTitle;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
        style: TextStyle( fontSize: 25,fontWeight: FontWeight.w500),
        maxLines: 1, overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(ButtonTitle)),
      ],
    );
  }
}