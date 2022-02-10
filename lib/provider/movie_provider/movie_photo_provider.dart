import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/movie_photo_model.dart';

import 'package:movie/data/repository/movie_repo/movie_photos_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class MoviePhotosProvider with ChangeNotifier {
  MoviePhotosModel? moviePhotosModel;
  List<Posters>? result;

  MoviePhotosProvider() {
    // displayTopRated();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  MoviePhotosRepo repo = MoviePhotosRepo();
  Future displayMoviePhotos({required movieId}) async {
    result = await repo.getMoviePhotos(
        dio: DioHelper.dio,
        moviePhotosModel: moviePhotosModel,
        result: result,
        movieId: movieId);
    notifyListeners();
  }
}
