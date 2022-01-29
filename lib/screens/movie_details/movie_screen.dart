import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/screens/home/component/most_popular.dart';
import 'package:movie/screens/movie_details/components/body.dart';
import 'package:movie/style.dart';
import 'dart:ui' as ui show Image;

class MovieScreen extends StatelessWidget {
  final MostPopularModel mostPopular;
  const MovieScreen({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(mostPopular: mostPopular),
    );
  }
}
