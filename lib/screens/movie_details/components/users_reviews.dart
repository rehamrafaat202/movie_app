import 'package:flutter/material.dart';
import 'package:movie/models/actor_all_movies_model.dart';
import 'package:movie/models/user_review_model.dart';
import 'package:movie/screens/movie_details/components/review_data.dart';
import 'package:movie/style.dart';

class UsersReviews extends StatefulWidget {
  const UsersReviews({Key? key}) : super(key: key);

  @override
  State<UsersReviews> createState() => _UsersReviewsState();
}

class _UsersReviewsState extends State<UsersReviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "reviews".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: reviews.length,
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
                              image: NetworkImage(reviews[index].image!),
                              fit: BoxFit.cover)),
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
