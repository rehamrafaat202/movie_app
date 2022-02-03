import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/screens/movie_details/components/build_poster.dart';
import 'package:movie/widgets/curve_container.dart';

class MovieCover extends StatelessWidget {
  final Results mostPopular;

  const MovieCover({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: ClipPath(
            clipper: CurveContainer(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: mostPopular.backdropPath!.isEmpty
                          ? const NetworkImage(
                              "https://i.pinimg.com/originals/6e/6a/e2/6e6ae2b2367c74e2bd0be2f014cdf9f1.jpg")
                          : NetworkImage(imgeUrl + mostPopular.backdropPath!))),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          left: 10,
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    // size: 40,
                    color: Colors.white,
                  )),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    // size: 40,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        BuildPoster(
          mostPopular: mostPopular,
        ),
      ],
    );
  }
}
