import 'package:flutter/material.dart';

Widget resuableText(
    {required String text,
    required double fontsize,
    double letterspacing = 1,
    FontWeight fontWeight = FontWeight.normal, color=Colors.black}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: fontsize,
        letterSpacing: letterspacing,
        fontWeight: fontWeight,color: color),
  );
}
