import 'package:flutter/material.dart';
import 'package:movie/provider/movie_provider/movie_review_provider.dart';
import 'package:movie/screens/movie_details/components/review_data.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

class UsersReviews extends StatefulWidget {
  const UsersReviews({Key? key}) : super(key: key);

  @override
  State<UsersReviews> createState() => _UsersReviewsState();
}

class _UsersReviewsState extends State<UsersReviews> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "reviews".toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
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
          ),
          const SizedBox(
            height: 15,
          ),
          Consumer<MovieReviewProvider>(
            builder: (context, value, child) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: !seeAll
                    ? value.result!.take(3).toList().length
                    : value.result!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          margin: const EdgeInsets.only(right: 12),
                          width: 90,
                          decoration: BoxDecoration(
                            color: scondryColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: value.result![index].authorDetails!
                                        .avatarPath
                                        .toString()
                                        .contains("https")
                                    ? NetworkImage(
                                        value.result![index].authorDetails!
                                            .avatarPath
                                            .toString()
                                            .substring(1),
                                      )
                                    : const NetworkImage(
                                        "https://image.tmdb.org/t/p/w500/5xKJup6PHf9O52gTxleT4oSkCtd.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        ReviewData(
                          index: index,
                        ),
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
                                value.result![index].authorDetails!.rating ==
                                        null
                                    ? "88"
                                    : value.result![index].authorDetails!.rating
                                        .toString(),
                                // actorMovies[index].rete.toString(),
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
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ]));
  }
}
