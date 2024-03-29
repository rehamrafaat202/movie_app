import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/coming_soon2_model.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/data/repository/movie_repo/coming_soon_repo.dart';
import 'package:movie/data/repository/repo_controller.dart';

class ComingSoonProvider with ChangeNotifier {
  ComingSoon2Model? autogenerated;
  List<ComingResults>? result;

  ComingSoonProvider() {
    displayComingSoon();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  ComingSoonRepo repo = ComingSoonRepo();
  displayComingSoon() async {
    result = await repo.getUpComing(
        dio: DioHelper.dio, autogenerated: autogenerated, result: result);
    notifyListeners();
  }
}
