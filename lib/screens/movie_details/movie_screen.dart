import 'package:flutter/material.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/screens/movie_details/components/body.dart';

class MovieScreen extends StatelessWidget {
  final Results mostPopular;
  const MovieScreen({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(mostPopular: mostPopular),
    );
  }
}
