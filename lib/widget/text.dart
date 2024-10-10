import 'package:flutter/material.dart';

class MyTxt extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign? textAlign;

  const MyTxt({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.backgroundColor,
    required this.textColor,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          backgroundColor: backgroundColor,
          color: textColor,
          fontFamily: 'Poppins',
          fontSize: fontSize ?? 14.0,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
