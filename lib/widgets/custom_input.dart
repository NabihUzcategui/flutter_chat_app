// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final IconData icon;
  final String placeHolder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool inPassword;

  const CustomInput({
    Key? key,
    required this.icon,
    required this.placeHolder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.inPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 5),
                blurRadius: 5,
              )
            ]),
        child: TextField(
          controller: textController,
          autocorrect: false,
          keyboardType: keyboardType,
          obscureText: inPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: placeHolder),
        ));
  }
}
