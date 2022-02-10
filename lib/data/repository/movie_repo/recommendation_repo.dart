import 'package:movie/constants.dart';
import 'package:movie/data/models/movie_photo_model.dart';
import 'package:movie/data/models/recommendation_model.dart';

class RecommendationRepo {
  RecommendationRepo();

  Future<List<RecommendationResults>> getRecommendationMovies(
      {dio, RecommendationModel? recommendationModel, result, movieId}) async {
    await dio
        .get(
      "movie/$movieId/recommendations",
    )
        .then((value) {
      recommendationModel = RecommendationModel.fromJson(value.data);
      result = recommendationModel!.results;
      print(result.length);
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
