import 'package:flutter/material.dart';
import 'package:movie/models/coming_soon_model.dart';

import 'package:movie/widgets/film_poster.dart';

class ComingSoonCollection extends StatelessWidget {
  const ComingSoonCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Coming Soon".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: soon.length,
            itemBuilder: (context, index) {
              return FilmPoster(
                  image: soon[index].image!,
                  subTitle: soon[index].subTitle!,
                  title: soon[index].title!);
            },
          ),
        ),
      ],
    );
  }
}
