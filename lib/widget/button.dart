import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;
  final String? imageUrl;
  final double? width;
  final double? fontSize; // New parameter for font size
  final FontWeight? fontWeight;

  const MyButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    this.imageUrl,
    this.width,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
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