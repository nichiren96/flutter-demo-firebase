import 'package:flutter/cupertino.dart';

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

SizedBox space({double? width, double? height}) {
  return SizedBox(
    height: height,
    width: width,
  );
}
