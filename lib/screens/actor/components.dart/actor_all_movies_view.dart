import 'package:flutter/material.dart';
import 'package:movie/models/actor_all_movies_model.dart';
import 'package:movie/style.dart';

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
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: actorMovies.length,
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
                          image: DecorationImage(
                              image: NetworkImage(actorMovies[index].image!),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          actorMovies[index].title!,
                          style: const TextStyle(
                            wordSpacing: 1,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          actorMovies[index].name!,
                          style: const TextStyle(
                            wordSpacing: 1,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          actorMovies[index].category!,
                          style: const TextStyle(
                            wordSpacing: 1.5,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          actorMovies[index].date!,
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
                            actorMovies[index].rete.toString(),
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
          const SizedBox(
            height: 40,
          ),
        ]));
  }
}
