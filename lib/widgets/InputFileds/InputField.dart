
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, 
    required this.controller,
    this.inputType,
    required this.hintText,
    required this.supportText,
  });
  final TextInputType? inputType;
  final String supportText;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: (inputType==null)?TextInputType.text:inputType,
        decoration:InputDecoration(
          helperText: supportText,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}