import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/actor_all_movies_model.dart';
import 'package:movie/data/models/actors_photos_model.dart';
import 'package:movie/data/repository/cast_repo/actor_all_movies.dart';
import 'package:movie/data/repository/cast_repo/actor_photos_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class ActorAllmoviesProvider with ChangeNotifier {
  ActorAllMoviesModel? actorAllMoviesModel;
  List<ActorAllMoviesCast>? result = [];
  Dio dio = Dio();
  ActorAllmoviesProvider();

  ActorAllMoviesRepo repo = ActorAllMoviesRepo();
  Future displayAllActorMovies({required personId}) async {
    result = await repo.getCast(
        dio: DioHelper.dio,
        actorAllMoviesModel: actorAllMoviesModel,
        result: result,
        personId: personId);
    notifyListeners();
  }
}
