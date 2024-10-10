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
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Column(
        children: [
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
                  text: 'Hi,  BiTrix',
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
          SizedBox(height: 160),
          MyButton(
            buttonText: 'Logout',
            buttonColor: reddColor,
            fontWeight: FontWeight.w700,
            width: 150,
            fontSize: 15,
            onPressed: () {
              final DashboardController dashboardController = Get.find();
              dashboardController.resetIndex();
              Get.toNamed('/login');
            },
          ),

        ],
      ),
    );
  }
}
