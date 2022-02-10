import 'package:flutter/material.dart';
import 'package:movie/data/models/actor_success_movies_model.dart';

import 'package:movie/widgets/film_poster.dart';

class SuccessMoviesView extends StatelessWidget {
  const SuccessMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "most successful movies".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: successMovies.length,
              itemBuilder: (context, index) {
                return FilmPoster(
                  image: successMovies[index].image!,
                  subTitle: successMovies[index].subTitle!,
                  title: successMovies[index].title!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
