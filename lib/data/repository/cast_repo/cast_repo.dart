import 'package:movie/constants.dart';
import 'package:movie/data/models/cast_model.dart';

class CastRepo {
  CastRepo();

  Future<List<Cast>> getCast(
      {dio, CastModel? castModel, result, movieId}) async {
    await dio
        .get(
      "movie/$movieId/credits",
    )
        .then((value) {
      castModel = CastModel.fromJson(value.data);
      result = castModel!.cast;
      print("cast ${result}");
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
