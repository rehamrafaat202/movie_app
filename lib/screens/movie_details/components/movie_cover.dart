import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/screens/home/component/most_popular.dart';
import 'package:movie/screens/movie_details/components/build_poster.dart';
import 'package:movie/style.dart';
import 'package:movie/widgets/curve_container.dart';

class MovieCover extends StatelessWidget {
  final MostPopularModel mostPopular;

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
                      image: NetworkImage(mostPopular.cover!))),
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
