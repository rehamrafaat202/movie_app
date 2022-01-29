import 'package:flutter/material.dart';
import 'package:movie/provider/read_more_provider.dart';
import 'package:movie/screens/news/components/news_banner.dart';
import 'package:movie/screens/news/news_screen.dart';
import 'package:movie/screens/splash_screen.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReadMore(),
        ),
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
