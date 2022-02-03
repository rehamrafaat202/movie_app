import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/provider/recommendation_provider.dart';

import 'package:movie/widgets/film_poster.dart';
import 'package:provider/provider.dart';

class RecommendedView extends StatefulWidget {
  const RecommendedView({Key? key}) : super(key: key);

  @override
  State<RecommendedView> createState() => _RecommendedViewState();
}

class _RecommendedViewState extends State<RecommendedView> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "recommended".toUpperCase(),
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    seeAll = !seeAll;
                  });
                },
                child: Text(
                  !seeAll ? "See All" : "See Less",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 280,
            child: Consumer<RecommendationProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: !seeAll
                      ? value.result!.take(5).toList().length
                      : value.result!.length,
                  itemBuilder: (context, index) {
                    return FilmPoster(
                        image: imgeUrl + value.result![index].posterPath!,
                        subTitle: value.result![index].releaseDate!,
                        title: value.result![index].title!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
