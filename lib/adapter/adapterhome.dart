import 'package:eduvie_movies/widget/img.dart';
import 'package:eduvie_movies/widget/text.dart';
import 'package:flutter/material.dart';

class AdapterHome extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;

  const AdapterHome({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyImg(
            imageUrl: imageUrl,
            height: 100,
            width: 160,
            borderRadius: 8.0,
          ),
          const SizedBox(height: 4),
          MyTxt(
            text: title,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            textColor: Colors.white,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          MyTxt(
            text: genre,
            fontSize: 15,
            fontWeight: FontWeight.w300,
            textColor: Colors.grey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
