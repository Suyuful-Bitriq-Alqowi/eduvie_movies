import 'package:eduvie_movies/data/upcoming_data.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class UpcomingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: AppBar(
        backgroundColor: secondBackground,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/fotoprofile.png'),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTxt(
                  text: 'Hi, BiTriX',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  textColor: whiteColor,
                ),
                MyTxt(
                  text: 'Watch the movie all you want',
                  fontSize: 14,
                  textColor: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 0.85,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyImg(
                  imageUrl: imageUrls[index],
                  borderRadius: 12.0,
                  width: 160,
                  height: 220,
                ),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 16.0,
                    ),
                    MyTxt(
                      text: upcomingDates[index],
                      fontSize: 12.0,
                      textColor: whiteColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
