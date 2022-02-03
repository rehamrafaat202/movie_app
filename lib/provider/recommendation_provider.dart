import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/movie_photo_model.dart';
import 'package:movie/data/models/recommendation_model.dart';

import 'package:movie/data/repository/movie_repo/movie_photos_repo.dart';
import 'package:movie/data/repository/movie_repo/recommendation_repo.dart';

class RecommendationProvider with ChangeNotifier {
  RecommendationModel? recommendationModel;
  List<RecommendationResults>? result;
  Dio dio = Dio();
  RecommendationProvider() {
    // displayTopRated();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  RecommendationRepo repo = RecommendationRepo();
  Future displayRecommendationMovies({required movieId}) async {
    result = await repo.getRecommendationMovies(
        dio: dio,
        recommendationModel: recommendationModel,
        result: result,
        movieId: movieId);
    notifyListeners();
  }
}
