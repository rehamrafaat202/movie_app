import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/movie_photo_model.dart';
import 'package:movie/data/models/movie_review_model.dart';
import 'package:movie/data/models/recommendation_model.dart';
import 'package:movie/data/repository/movie_repo/movie_review_repo.dart';

import 'package:movie/data/repository/movie_repo/recommendation_repo.dart';

class MovieReviewProvider with ChangeNotifier {
  MovieReviewModel? movieReviewModel;
  List<MovieReviewResults>? result;
  Dio dio = Dio();
  MovieReviewProvider();
  // ..interceptors.add(alice.getDioInterceptor());

  MovieReviewRepo repo = MovieReviewRepo();
  Future displayMoviesReviews({required movieId}) async {
    result = await repo
        .getMoviesReviews(
            dio: dio,
            movieReviewModel: movieReviewModel,
            result: result,
            movieId: movieId)
        .catchError((e) {
      print(e.message);
    });
    notifyListeners();
  }
}
