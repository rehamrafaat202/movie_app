import 'package:flutter/material.dart';
import 'package:movie/provider/cast_provider.dart';
import 'package:movie/provider/cast_provider/actor_all_movies_provider.dart';
import 'package:movie/provider/cast_provider/actor_photos_provider.dart';
import 'package:movie/provider/coming_soon_provider.dart';
import 'package:movie/provider/most_popular_provider.dart';
import 'package:movie/provider/movie_photo_provider.dart';
import 'package:movie/provider/movie_review_provider.dart';
import 'package:movie/provider/now_playing_provider.dart';
import 'package:movie/provider/read_more_provider.dart';
import 'package:movie/provider/recommendation_provider.dart';
import 'package:movie/provider/top_rated_provider.dart';

import 'package:movie/screens/splash_screen.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

// Alice alice = Alice(showNotification: true);

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // MostPopularRepo repo = MostPopularRepo();

  // repo.getMostPopular();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReadMore(),
        ),
        ChangeNotifierProvider(create: (context) => MostPopularProvider()),
        ChangeNotifierProvider(create: (context) => ComingSoonProvider()),
        ChangeNotifierProvider(create: (context) => NowPlayingProvider()),
        ChangeNotifierProvider(create: (context) => TopRatedProvider()),
        ChangeNotifierProvider(create: (context) => MoviePhotosProvider()),
        ChangeNotifierProvider(create: (context) => RecommendationProvider()),
        ChangeNotifierProvider(create: (context) => MovieReviewProvider()),
        ChangeNotifierProvider(create: (context) => CastProvider()),
        ChangeNotifierProvider(create: (context) => ActorPhotosProvider()),
        ChangeNotifierProvider(create: (context) => ActorAllmoviesProvider()),
      ],
      child: MaterialApp(
          title: 'Movie App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: "Roboto",
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0.0,
                titleTextStyle: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                iconTheme: IconThemeData(
                  color: Colors.black87,
                  size: 40,
                )),
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen()),
    );
  }
}
