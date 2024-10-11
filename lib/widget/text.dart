import 'package:flutter/material.dart';

class MyTxt extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final int? maxLines; // Default to null
  final TextOverflow? overflow; // Default to null

  const MyTxt({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.backgroundColor,
    required this.textColor,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines, // No default value
        overflow: overflow, // No default value
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
