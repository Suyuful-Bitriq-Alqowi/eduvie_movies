import 'package:flutter/material.dart';
import 'package:eduvie_movies/widget/button.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';

class AdapterHome extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String studio;
  final String rating;
  final String genre;

  const AdapterHome({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.studio,
    required this.rating,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show dialog on tap
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: primaryBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: MyImg(
                        imageUrl: imageUrl,
                        height: 100,
                        width: 170,
                        borderRadius: 12.0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: MyTxt(
                        text: title,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        textColor: whiteColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: MyTxt(
                        text: studio,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        textColor: hintText,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: MyTxt(
                        text: 'Genre: $genre',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: MyTxt(
                        text: 'Rating: $rating',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: reddColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: MyButton(
                        buttonText: 'Add',
                        buttonColor: reddColor,
                        width: 100,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyImg(
              imageUrl: imageUrl,
              height: 110,
              width: 150,
              borderRadius: 8.0,
            ),
            const SizedBox(height: 4),
            MyTxt(
              text: title,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              textColor: whiteColor,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            MyTxt(
              text: genre,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textColor: hintText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
