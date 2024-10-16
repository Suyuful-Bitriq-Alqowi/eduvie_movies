import 'package:eduvie_movies/adapter/adapterhistory.dart';
import 'package:eduvie_movies/data/history_data.dart';
import 'package:eduvie_movies/widget/color.dart';
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
          return AdapterHistory(
            imageUrl: movie.imageUrl,
            title: movie.title,
            studio: movie.studio,
            rating: movie.rating, genre: movie.genre,
          );
        },
      ),
    );
  }
}
