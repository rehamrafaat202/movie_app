import 'package:movie/constants.dart';
import 'package:movie/data/models/movie_photo_model.dart';

class MoviePhotosRepo {
  MoviePhotosRepo();

  Future<List<Posters>> getMoviePhotos(
      {dio, MoviePhotosModel? moviePhotosModel, result, movieId}) async {
    await dio
        .get(
      baseUrl + "movie/$movieId/images",
    )
        .then((value) {
      moviePhotosModel = MoviePhotosModel.fromJson(value.data);
      result = moviePhotosModel!.posters;
      print(result.length);
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
