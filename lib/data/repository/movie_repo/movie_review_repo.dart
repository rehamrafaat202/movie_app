import 'package:movie/constants.dart';
import 'package:movie/data/models/movie_photo_model.dart';
import 'package:movie/data/models/movie_review_model.dart';
import 'package:movie/data/models/recommendation_model.dart';

class MovieReviewRepo {
  MovieReviewRepo();

  Future<List<MovieReviewResults>> getMoviesReviews(
      {dio, MovieReviewModel? movieReviewModel, result, movieId}) async {
    await dio
        .get(
      baseUrl + "movie/$movieId/reviews",
    )
        .then((value) {
      movieReviewModel = MovieReviewModel.fromJson(value.data);
      result = movieReviewModel!.results;
      // print(result.length);
      return result;
    }).catchError((e) {
      print(e.message);
    });

    return result!;
  }
}
