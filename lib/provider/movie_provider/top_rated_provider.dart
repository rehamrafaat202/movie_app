import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'package:movie/data/models/top_rated_model.dart';

import 'package:movie/data/repository/movie_repo/top_rated_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class TopRatedProvider with ChangeNotifier {
  TopRatedModel? topRatedModel;
  List<TopRatedResults>? result;
  // Dio dio = Dio();
  TopRatedProvider() {
    displayTopRated();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  TopRatedRepo repo = TopRatedRepo();
  displayTopRated() async {
    result = await repo.getTopRated(
        dio: DioHelper.dio, topRatedModel: topRatedModel, result: result);
    notifyListeners();
  }
}
