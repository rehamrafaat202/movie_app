import 'package:movie/constants.dart';
import 'package:movie/data/models/actor_all_movies_model.dart';

class ActorAllMoviesRepo {
  ActorAllMoviesRepo();

  Future<List<ActorAllMoviesCast>> getCast(
      {dio, ActorAllMoviesModel? actorAllMoviesModel, result, personId}) async {
    await dio.get(baseUrl + "person/$personId/movie_credits",
        queryParameters: {"api_key": apiKey}).then((value) {
      actorAllMoviesModel = ActorAllMoviesModel.fromJson(value.data);
      result = actorAllMoviesModel!.cast;
      print("AllMovies ${result.length}");
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
