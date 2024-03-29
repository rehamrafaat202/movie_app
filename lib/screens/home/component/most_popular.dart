import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/provider/cast_provider/cast_provider.dart';
// import 'package:movie/data/models/most_popular_model.dart';
import 'package:movie/provider/movie_provider/most_popular_provider.dart';
import 'package:movie/provider/movie_provider/movie_photo_provider.dart';
import 'package:movie/provider/movie_provider/movie_review_provider.dart';
import 'package:movie/provider/movie_provider/recommendation_provider.dart';
import 'package:movie/screens/home/popular_pagnation_screen.dart';
import 'package:movie/screens/movie_details/movie_screen.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  // @override
  // void didChangeDependencies() {
  //   Provider.of<MostPopularProvider>(context, listen: false)
  //       .displayMostPopular();

  //   super.didChangeDependencies();
  // }

  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    // print(Provider.of<MostPopularProvider>(context, listen: true));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Most Popular Movies",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PopularPagnationScreen()));
                  // setState(() {
                  //   seeAll = !seeAll;
                  // });
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
        Provider.of<MostPopularProvider>(context, listen: true).autogenerated ==
                null
            ? const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              )
            : SizedBox(
                height: 280,
                child: Consumer<MostPopularProvider>(
                  builder: (context, value, child) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: !seeAll
                          ? value.autogenerated!.results!
                              .take(3)
                              .toList()
                              .length
                          : value.autogenerated!.results!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: InkWell(
                                  onTap: () async {
                                    await Provider.of<MoviePhotosProvider>(
                                            context,
                                            listen: false)
                                        .displayMoviePhotos(
                                            movieId: value.autogenerated!
                                                .results![index].id!);
                                    await Provider.of<RecommendationProvider>(
                                            context,
                                            listen: false)
                                        .displayRecommendationMovies(
                                            movieId: value.autogenerated!
                                                .results![index].id!);
                                    await Provider.of<MovieReviewProvider>(
                                            context,
                                            listen: false)
                                        .displayMoviesReviews(
                                            movieId: value.autogenerated!
                                                .results![index].id!);

                                    try {
                                      await Provider.of<CastProvider>(context,
                                              listen: false)
                                          .displayCastMovie(
                                              movieId: value.autogenerated!
                                                  .results![index].id!);
                                    } on Exception catch (e) {
                                      print(e);
                                      // TODO
                                    }

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MovieScreen(
                                                mostPopular: value
                                                    .autogenerated!
                                                    .results![index])));
                                  },
                                  child: Hero(
                                    tag: value.autogenerated!.results![index]
                                        .posterPath!,
                                    child: Container(
                                        // height: 180,
                                        width: 125,
                                        decoration: BoxDecoration(
                                          color: scondryColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: FadeInImage(
                                            image: NetworkImage(imgeUrl +
                                                value
                                                    .autogenerated!
                                                    .results![index]
                                                    .posterPath!),
                                            placeholder: const NetworkImage(
                                                "https://i.pinimg.com/736x/ea/c9/e4/eac9e415993a0c4eb84135e9e3f2e386.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ),
                                ),
                              ),

                              Container(
                                width: 125,
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  value.autogenerated!.results![index].title!,
                                  // value.autogenerated!.results![0].originalTitle!,
                                  // popular[index].title!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: rateColor,
                                      size: 15,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      value.autogenerated!.results![index]
                                          .voteAverage
                                          .toString(),
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              )
                              // Container(
                              //   height: 70,
                              // )
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
      ],
    );
  }
}
