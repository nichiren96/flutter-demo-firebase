import 'package:flutter/material.dart';

TextStyle title = TextStyle(fontSize: 32, color: Colors.brown.shade300);
const TextStyle subtitle = TextStyle();
const TextStyle label = TextStyle();

class Header extends StatelessWidget {
  final String text;
  final TextStyle style;

  Header.title(this.text) : style = title;
  Header.subtitle(this.text) : style = subtitle;
  Header.label(this.text) : style = label;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
