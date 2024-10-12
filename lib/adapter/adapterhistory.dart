import 'package:eduvie_movies/widget/button.dart';
import 'package:eduvie_movies/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';

class AdapterHistory extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String studio;
  final String rating;
  final String genre;

  const AdapterHistory({
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: MyImg(
                        imageUrl: imageUrl,
                        height: 150,
                        width: 120,
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
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: secondBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            MyImg(
              imageUrl: imageUrl,
              height: 130,
              width: 100,
              borderRadius: 8.0,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyTxt(
                    text: title,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    textColor: whiteColor,
                  ),
                  const SizedBox(height: 4),
                  MyTxt(
                    text: studio,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textColor: hintText,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      MyTxt(
                        text: rating,
                        fontSize: 14,
                        textColor: reddColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
