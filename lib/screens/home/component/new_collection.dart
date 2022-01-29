import 'package:flutter/material.dart';
import 'package:movie/models/new_model.dart';
import 'package:movie/widgets/film_poster.dart';

class NewCollection extends StatelessWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            "NEW",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: news.length,
            itemBuilder: (context, index) {
              return FilmPoster(
                  image: news[index].image!,
                  subTitle: news[index].subTitle!,
                  title: news[index].title!);
            },
          ),
        ),
      ],
    );
  }
}
