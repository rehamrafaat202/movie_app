import 'package:movie/constants.dart';
import 'package:movie/data/models/actors_photos_model.dart';
import 'package:movie/data/models/cast_model.dart';

class ActorPhotosRepo {
  ActorPhotosRepo();

  Future<List<Profiles>> getCast(
      {dio, ActorPhotosModel? actorPhotosModel, result, personId}) async {
    await dio.get(baseUrl + "person/$personId/images",
        queryParameters: {"api_key": apiKey}).then((value) {
      actorPhotosModel = ActorPhotosModel.fromJson(value.data);
      result = actorPhotosModel!.profiles;
      print("castPhotos ${result.length}");
      return result;
    }).catchError((e) {
      print(e);
    });

    return result!;
  }
}
