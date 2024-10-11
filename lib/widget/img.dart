import 'package:flutter/material.dart';

class MyImg extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final double borderRadius;

  const MyImg({
    Key? key,
    required this.imageUrl,
    this.height,
    this.width,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        imageUrl,
        height: height ?? 200,
        width: width ?? 130,
        fit: BoxFit.cover,
      ),
    );
  }
}
