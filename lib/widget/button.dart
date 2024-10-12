import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;
  final String? imageUrl;
  final IconData? icon;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    this.imageUrl,
    this.icon,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: whiteColor,
              ),
            if (icon != null) const SizedBox(width: 5),
            if (imageUrl != null)
              MyImg(
                imageUrl: imageUrl!,
                width: 25,
                height: 25,
              ),
            if (imageUrl != null) const SizedBox(width: 5),
            MyTxt(
              text: buttonText,
              fontSize: fontSize ?? 11,
              textColor: whiteColor,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
