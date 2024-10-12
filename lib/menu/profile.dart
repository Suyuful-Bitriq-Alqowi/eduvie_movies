import 'package:eduvie_movies/controller/dashboard_controller.dart';
import 'package:eduvie_movies/widget/button.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dashboardController = Get.put(DashboardController());
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SafeArea(
        child: Column(
          children: [
            // Header Profile
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                color: secondBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 65),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyImg(
                    imageUrl: 'images/fotoprofile.png',
                    width: 105,
                    height: 105,
                    borderRadius: 100,
                  ),
                  SizedBox(height: 20),
                  MyTxt(
                    text: 'Hi, BiTrix',
                    fontSize: 24,
                    textColor: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 5),
                  MyTxt(
                    text: 'bitriqs@gmail.com',
                    fontSize: 16,
                    textColor: reddColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            MyTxt(text: 'Achievement', textColor: whiteColor, fontSize: 24,fontWeight: FontWeight.w700,),
            Expanded(
              child: Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    MyButton(
                      buttonText: 'First Time',
                      icon: Icons.emoji_events,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                    MyButton(
                      buttonText: 'Super Fan',
                      icon: Icons.star,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                    MyButton(
                      buttonText: 'Explorer',
                      icon: Icons.explore,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                    MyButton(
                      buttonText: 'Rating Ruler',
                      icon: Icons.assessment,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                    MyButton(
                      buttonText: 'Night Owl',
                      icon: Icons.nightlight_round,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                    MyButton(
                      buttonText: 'Hidden Gem',
                      icon: Icons.visibility_off,
                      buttonColor: whiteColor.withOpacity(0.1),
                      width: 150,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tombol Logout
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyButton(
                buttonText: 'Log out',
                buttonColor: reddColor,
                fontWeight: FontWeight.w700,
                width: 150,
                fontSize: 15,
                onPressed: () {
                  dashboardController.resetIndex();
                  Get.toNamed('/login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
