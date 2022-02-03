import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/data/repository/movie_repo/most_popular_repo.dart';
import 'package:movie/main.dart';

class MostPopularProvider with ChangeNotifier {
  Autogenerated? autogenerated;
  List<Results>? result;
  Dio dio = Dio();
  MostPopularProvider() {
    displayMostPopular();
  }
  // ..interceptors.add(alice.getDioInterceptor());

  MostPopularRepo repo = MostPopularRepo();
  displayMostPopular() async {
    autogenerated =
        await repo.getMostPopular(dio: dio, autogenerated: autogenerated);
    notifyListeners();
  }
}