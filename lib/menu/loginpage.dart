import 'package:eduvie_movies/widget/button.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/richtext.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryBackground,
        elevation: 0,
        title: Center(
          child: EduvieRichText(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyImg(
              imageUrl: 'images/kevin.png',
              width: 365,
              height: 420,
              borderRadius: 0,
            ),
            const SizedBox(height: 20),
            const MyTxt(
              text:
                  '" Watch your favorite films and series on one platform. Eduvie+ is always with you, anytime, anywhere. "',
              fontSize: 16,
              textColor: whiteColor,
              fontWeight: FontWeight.w300,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              buttonText: "Sign in",
              fontSize: 16,
              buttonColor: reddColor,
              onPressed: () {
                Get.toNamed('/dashboard');
              },
              width: 270,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 10),
            MyButton(
              buttonText: "Continue with Google",
              buttonColor: secondBackground,
              fontSize: 16,
              onPressed: () {},
              imageUrl: 'images/google.png',
              width: 270,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
