import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/screens/movie_details/components/cast_view.dart';
import 'package:movie/screens/movie_details/components/movie_cover.dart';
import 'package:movie/screens/movie_details/components/movie_data.dart';
import 'package:movie/screens/movie_details/components/movies_pictures_view.dart';
import 'package:movie/screens/movie_details/components/recommended_view.dart';
import 'package:movie/screens/movie_details/components/users_reviews.dart';
import 'package:movie/screens/movie_details/components/story_line.dart';

class Body extends StatelessWidget {
  final MostPopularModel mostPopular;
  const Body({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MovieCover(mostPopular: mostPopular),
          MovieData(mostPopularModel: mostPopular),
          StoryLine(paragraph: mostPopular.paragraph!),
          const CastView(),
          const MoviesPicturesView(),
          const RecommendedView(),
          const UsersReviews()
        ],
      ),
    );
  }
}
