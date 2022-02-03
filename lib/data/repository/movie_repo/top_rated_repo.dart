import 'package:movie/constants.dart';
import 'package:movie/data/models/coming_soon2_model.dart';
import 'package:movie/data/models/now_playing_model.dart';
import 'package:movie/data/models/top_rated_model.dart';

class TopRatedRepo {
  TopRatedRepo();

  Future<List<TopRatedResults>> getTopRated(
      {dio, TopRatedModel? topRatedModel, result}) async {
    await dio.get(baseUrl + "movie/top_rated",
        queryParameters: {"api_key": apiKey}).then((value) {
      topRatedModel = TopRatedModel.fromJson(value.data);
      result = topRatedModel!.results;
      print(result![0]);
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
