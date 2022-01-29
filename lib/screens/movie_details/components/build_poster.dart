import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/style.dart';

class BuildPoster extends StatelessWidget {
  final MostPopularModel mostPopular;
  const BuildPoster({required this.mostPopular, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 200,
        left: 18.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Hero(
                tag: mostPopular.image!,
                child: Container(
                  height: 155,
                  width: 110,
                  decoration: BoxDecoration(
                      color: scondryColor,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(mostPopular.image!),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mostPopular.title!.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: rateColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              mostPopular.rete.toString(),
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.access_alarm,
                              color: scondryColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              mostPopular.time!,
                              style: const TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 240,
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                  label: Text(mostPopular.category![index])));
                        },
                        itemCount: mostPopular.category!.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
