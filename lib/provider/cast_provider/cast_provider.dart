import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/cast_model.dart';
import 'package:movie/data/models/recommendation_model.dart';
import 'package:movie/data/repository/cast_repo/cast_repo.dart';

import 'package:movie/data/repository/movie_repo/recommendation_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class CastProvider with ChangeNotifier {
  CastModel? castModel;
  List<Cast>? result;
  // Dio dio = Dio();
  CastProvider();

  CastRepo repo = CastRepo();
  Future displayCastMovie({required movieId}) async {
    result = await repo.getCast(
        dio: DioHelper.dio,
        castModel: castModel,
        result: result,
        movieId: movieId);
    notifyListeners();
  }
}
