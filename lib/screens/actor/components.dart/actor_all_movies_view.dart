import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/actor_all_movies_model.dart';
import 'package:movie/provider/cast_provider/actor_all_movies_provider.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

class ActorAllMoviesView extends StatelessWidget {
  const ActorAllMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "all movies".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          Consumer<ActorAllmoviesProvider>(
            builder: (context, value, child) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: value.result!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        margin: const EdgeInsets.only(right: 12),
                        width: 90,
                        decoration: BoxDecoration(
                            color: scondryColor,
                            borderRadius: BorderRadius.circular(10),
                            image: value.result![index].posterPath == null
                                ? const DecorationImage(
                                    image: AssetImage("assets/images/logo.png"),
                                    fit: BoxFit.fill)
                                : DecorationImage(
                                    image: NetworkImage(imgeUrl +
                                        value.result![index].posterPath!),
                                    fit: BoxFit.cover)),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.result![index].title!,
                            style: const TextStyle(
                              wordSpacing: 1,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            value.result![index].character!,
                            style: const TextStyle(
                              wordSpacing: 1,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "fiction,Action",
                            style: TextStyle(
                              wordSpacing: 1.5,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            value.result![index].releaseDate == null
                                ? ""
                                : value.result![index].releaseDate!,
                            style: const TextStyle(
                              wordSpacing: 1,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: rateColor,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              value.result![index].voteAverage.toString(),
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ]));
  }
}
