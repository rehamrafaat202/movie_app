import 'package:flutter/material.dart';
import 'package:movie/models/coming_soon_model.dart';
import 'package:movie/models/recommended_model.dart';

import 'package:movie/widgets/film_poster.dart';

class RecommendedView extends StatelessWidget {
  const RecommendedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "recommended".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: recommended.length,
              itemBuilder: (context, index) {
                return FilmPoster(
                    image: recommended[index].image!,
                    subTitle: recommended[index].subTitle!,
                    title: recommended[index].title!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
