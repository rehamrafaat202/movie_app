import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/actors_photos_model.dart';
import 'package:movie/data/models/cast_model.dart';
import 'package:movie/data/repository/cast_repo/cast_repo.dart';
import 'package:movie/data/repository/cast_repo/actor_photos_repo.dart';

class ActorPhotosProvider with ChangeNotifier {
  ActorPhotosModel? actorPhotosModel;
  List<Profiles>? result = [];
  Dio dio = Dio();
  ActorPhotosProvider();

  ActorPhotosRepo repo = ActorPhotosRepo();
  Future displayActorPhotos({required personId}) async {
    result = await repo.getCast(
        dio: dio,
        actorPhotosModel: actorPhotosModel,
        result: result,
        personId: personId);
    notifyListeners();
  }
}
