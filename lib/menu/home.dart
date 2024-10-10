import 'package:eduvie_movies/data/movie_data.dart';
import 'package:eduvie_movies/widget/button.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: secondBackground,
                  prefixIcon: Icon(Icons.search, color: hintText),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: hintText),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: whiteColor),
              ),
              const SizedBox(height: 30),
              MyTxt(
                  text: 'Popular movies',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  textColor: whiteColor),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingMovies.length,
                  itemBuilder: (context, index) {
                    final movie = trendingMovies[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyImg(
                            imageUrl: movie['imageUrl']!,
                            borderRadius: 8,
                          ),
                          const SizedBox(height: 8),
                          MyTxt(
                            text: movie['title']!,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            textColor: whiteColor,
                          ),
                          MyTxt(
                            text: movie['genre']!,
                            fontSize: 14,
                            textColor: whiteColor,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              MyTxt(
                text: 'For you',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                textColor: whiteColor,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedMovies.length,
                  itemBuilder: (context, index) {
                    final movie = recommendedMovies[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyImg(
                            imageUrl: movie['imageUrl']!,
                            borderRadius: 8,
                          ),
                          const SizedBox(height: 8),
                          MyTxt(
                            text: movie['title']!,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            textColor: whiteColor,
                          ),
                          MyTxt(
                            text: movie['genre']!,
                            fontSize: 14,
                            textColor: whiteColor,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    buttonText: 'Romance',
                    width: 110,
                    fontSize: 15,
                    buttonColor: secondBackground,
                    onPressed: () {
                      // Action here
                    },
                  ),
                  const SizedBox(width: 10),
                  MyButton(
                    buttonText: 'Action',
                    width: 110,
                    fontSize: 15,
                    buttonColor: secondBackground,
                    onPressed: () {
                      // Action here
                    },
                  ),
                  const SizedBox(width: 10),
                  MyButton(
                    buttonText: 'Comedy',
                    width: 110,
                    fontSize: 15,
                    buttonColor: secondBackground,
                    onPressed: () {
                      // Action here
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
