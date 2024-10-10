import 'package:eduvie_movies/data/history_data.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class HistoryMenu extends StatelessWidget {
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
                  fontWeight: FontWeight.bold,
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
      body: ListView.builder(
        itemCount: historyMovies.length,
        itemBuilder: (context, index) {
          final movie = historyMovies[index];
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: secondBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                MyImg(
                  imageUrl: movie['imageUrl']!,
                  height: 150,
                  width: 100,
                  borderRadius: 12,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTxt(
                        text: movie['title']!,
                        fontSize: 28,
                        textColor: whiteColor,  // Title in white
                        fontWeight: FontWeight.w700,
                      ),
                      MyTxt(
                        text: movie['studio']!,
                        fontSize: 14,
                        textColor: whiteColor,
                        fontWeight: FontWeight.w300,
                      ),
                      const SizedBox(height: 8),
                      MyTxt(
                        text: movie['rating']!,
                        fontSize: 14,
                        textColor: rating,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}