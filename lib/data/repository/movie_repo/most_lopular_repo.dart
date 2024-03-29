import 'package:movie/constants.dart';
import 'package:movie/data/models/test.dart';

class MostPopularRepo {
  MostPopularRepo();

  Future<Autogenerated> getMostPopular(
      {dio, Autogenerated? autogenerated, result, tlist}) async {
    await dio
        .get(
      "movie/popular",
    )
        .then((value) {
      autogenerated = Autogenerated.fromJson(value.data);

      return autogenerated;
    }).catchError((e) {
      print(e);
    });

    return autogenerated!;
  }
}
