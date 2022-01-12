import 'package:flutter/material.dart';

ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    padding: EdgeInsets.symmetric(vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    primary: Colors.brown.shade300);

ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    onPrimary: Colors.brown.shade300,
    padding: EdgeInsets.symmetric(vertical: 8),
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.brown.shade300, width: 2),
        borderRadius: BorderRadius.circular(50)),
    primary: Colors.transparent);

ButtonStyle accentButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black,
    padding: EdgeInsets.symmetric(vertical: 12),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    primary: Colors.white);

class Button extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function onPressed;
  final ButtonStyle style;

  Button.primary(this.text, this.onPressed, {this.icon})
      : style = primaryButtonStyle;
  Button.secondary(this.text, this.onPressed, {this.icon})
      : style = secondaryButtonStyle;
  Button.accent(this.text, this.onPressed, {this.icon})
      : style = accentButtonStyle;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? ElevatedButton.icon(
            style: style,
            onPressed: () => onPressed(),
            icon: Icon(icon),
            label: Text(text))
        : ElevatedButton(
            onPressed: () => onPressed(), style: style, child: Text(text));
  }
}
