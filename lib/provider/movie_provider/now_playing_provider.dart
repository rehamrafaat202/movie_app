import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/now_playing_model.dart';
import 'package:movie/data/repository/movie_repo/now_playing_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class NowPlayingProvider with ChangeNotifier {
  NowPlayingModel? nowPlayingModel;
  List<NowPlayingResults>? result;
  // Dio dio = Dio();
  NowPlayingProvider() {
    displayNowPlaying();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  NowPlayingRepo repo = NowPlayingRepo();
  displayNowPlaying() async {
    result = await repo.getNowPlaying(
        dio: DioHelper.dio, nowPlayingModel: nowPlayingModel, result: result);
    notifyListeners();
  }
}
