import 'package:movie/constants.dart';
import 'package:movie/data/models/coming_soon2_model.dart';
import 'package:movie/data/models/now_playing_model.dart';

class NowPlayingRepo {
  NowPlayingRepo();

  Future<List<NowPlayingResults>> getNowPlaying(
      {dio, NowPlayingModel? nowPlayingModel, result}) async {
    await dio
        .get(
      "movie/now_playing",
    )
        .then((value) {
      nowPlayingModel = NowPlayingModel.fromJson(value.data);
      result = nowPlayingModel!.results;
      print("now Playing ${nowPlayingModel!.totalPages}");
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
