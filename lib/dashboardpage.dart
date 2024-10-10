import 'package:eduvie_movies/controller/dashboard_controller.dart';
import 'package:eduvie_movies/menu/history.dart';
import 'package:eduvie_movies/menu/home.dart';
import 'package:eduvie_movies/menu/profile.dart';
import 'package:eduvie_movies/menu/upcoming.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [
      HomeMenu(),
      UpcomingMenu(),
      HistoryMenu(),
      ProfileMenu()
    ];

    return Obx(() {
      return Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          child: menus[dashboardController.selectedIndex.value],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: secondBackground,
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: reddColor,
          unselectedItemColor: whiteColor,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.upcoming), label: "Upcoming"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_outlined), label: "History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ],
        ),
      );
    });
  }
}