import 'package:flutter/material.dart';

class EduvieRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'E',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontFamily: 'Poppins',
            ),
          ),
          TextSpan(
            text: 'duvie+',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}