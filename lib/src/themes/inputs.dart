import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final String label;
  final bool isPassword;
  const Input(
      {Key? key,
      required this.label,
      required this.placeholder,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          labelText: label,
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 2)),
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          hintText: placeholder),
    );
  }
}
