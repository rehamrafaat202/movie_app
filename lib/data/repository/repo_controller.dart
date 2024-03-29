// import 'package:dio/dio.dart';

// class RepoController {
//   //var dio = Dio();
//   static final RepoController _singltone = RepoController._internal();

//   factory RepoController() {
//     return _singltone;
//   }

//   RepoController._internal();

//   Dio get dio {
//     var dio = Dio();
//     dio.options.baseUrl = "https://api.themoviedb.org/3/";
//     dio.options.connectTimeout = 50000;
//     dio.options.receiveTimeout = 30000;

//     dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) {
//         // options.queryParameters['api_key'] = "f55fbda0cb73b855629e676e54ab6d8e";
//         print(options.method + options.baseUrl + options.path);
//         print(options.queryParameters);
//       },
//       onResponse: (e, handler) {
//         print(e.data);
//       },
//       onError: (e, handler) {
//         print(e);
//       },
//     ));
//     return dio;
//   }
// }

import 'package:alice/alice.dart';

import 'package:dio/dio.dart';
import 'package:movie/constants.dart';
import 'package:movie/main.dart';

class DioHelper {
  static late Dio dio;

  static void init1() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
    dio.options.queryParameters['api_key'] = "f55fbda0cb73b855629e676e54ab6d8e";
    dio.interceptors.add(alice.getDioInterceptor());
  }
}
