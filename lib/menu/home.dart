import 'package:eduvie_movies/adapter/adapterhome.dart';
import 'package:flutter/material.dart';
import 'package:eduvie_movies/data/movie_data.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:eduvie_movies/widget/img.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      appBar: AppBar(
        backgroundColor: secondBackground,
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: corouselMovies.length,
                itemBuilder: (context, index) {
                  final movie = corouselMovies[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Jarak antar gambar
                    child: MyImg(
                      imageUrl: movie.imageUrl,
                      borderRadius: 10,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // Bagian Popular Movies
            MyTxt(
              text: 'Popular movies',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: trendingMovies.length,
                itemBuilder: (context, index) {
                  final movie = trendingMovies[index];
                  return AdapterHome(
                    imageUrl: movie.imageUrl,
                    title: movie.title,
                    genre: movie.genre,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // Bagian For You
            MyTxt(
              text: 'For you',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedMovies.length,
                itemBuilder: (context, index) {
                  final movie = recommendedMovies[index];
                  return AdapterHome(
                    imageUrl: movie.imageUrl,
                    title: movie.title,
                    genre: movie.genre,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            // Bagian High Rating Movies
            MyTxt(
              text: 'High Rating Movies',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highRatingMovies.length,
                itemBuilder: (context, index) {
                  final movie = highRatingMovies[index];
                  return AdapterHome(
                    imageUrl: movie.imageUrl,
                    title: movie.title,
                    genre: movie.genre,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
