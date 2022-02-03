import 'package:flutter/material.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/screens/movie_details/components/cast_view.dart';
import 'package:movie/screens/movie_details/components/movie_cover.dart';
import 'package:movie/screens/movie_details/components/movie_data.dart';
import 'package:movie/screens/movie_details/components/movies_pictures_view.dart';
import 'package:movie/screens/movie_details/components/recommended_view.dart';
import 'package:movie/screens/movie_details/components/users_reviews.dart';
import 'package:movie/screens/movie_details/components/story_line.dart';

class Body extends StatelessWidget {
  final Results mostPopular;
  const Body({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MovieCover(mostPopular: mostPopular),
          MovieData(mostPopularModel: mostPopular),
          StoryLine(paragraph: mostPopular.overview!),
          const CastView(),
          const MoviesPicturesView(),
          const RecommendedView(),
          const UsersReviews()
        ],
      ),
    );
  }
}
