import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/data/repository/hive_repo.dart';
import 'package:movie/data/repository/movie_repo/test_repo.dart';
import 'package:movie/provider/cast_provider/cast_provider.dart';
import 'package:movie/provider/movie_provider/movie_photo_provider.dart';
import 'package:movie/provider/movie_provider/movie_review_provider.dart';
import 'package:movie/provider/movie_provider/recommendation_provider.dart';
import 'package:movie/screens/movie_details/movie_screen.dart';

import 'package:movie/style.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:cancelable/cancelable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PopularPagnationScreen extends StatefulWidget {
  const PopularPagnationScreen({Key? key}) : super(key: key);

  @override
  _PopularPagnationScreenState createState() => _PopularPagnationScreenState();
}

class _PopularPagnationScreenState extends State<PopularPagnationScreen> {
  bool isLoading = false;
  bool isFav = false;

  final RefreshController refreshController = RefreshController();

  HiveRepo hive = HiveRepo();
  @override
  void initState() {
    Provider.of<TestRepo>(context, listen: false)
        .getMostPopularTest(refreshController: refreshController);

    hive.favorit = Hive.box<Results>(testModel);
  }

  Widget getIcon(int index) {
    if (hive.favorit!.containsKey(index)) {
      return const Icon(Icons.favorite, color: primaryColor);
    }

    return const Icon(Icons.favorite_border);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(Provider.of<TestRepo>(context).result);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("POPULARS"),
      ),
      body: ValueListenableBuilder<Box<dynamic>>(
          valueListenable: hive.favorit!.listenable(),
          builder: (context, box, _) {
            print("DDDDDd${box.values.toList()}");
            return Consumer<TestRepo>(
              builder: (context, value, child) => SmartRefresher(
                  controller: refreshController,
                  enablePullUp: true,
                  onRefresh: () async {
                    await Provider.of<TestRepo>(context, listen: false)
                        .getMostPopularTest(isRefresh: true);
                    if (Provider.of<TestRepo>(context, listen: false)
                        .result
                        .isNotEmpty) {
                      refreshController.refreshCompleted();
                    } else {
                      refreshController.refreshFailed();
                    }
                  },
                  onLoading: () async {
                    await Provider.of<TestRepo>(context, listen: false)
                        .getMostPopularTest();
                    if (Provider.of<TestRepo>(context, listen: false)
                        .result
                        .isNotEmpty) {
                      refreshController.loadComplete();
                    } else {
                      refreshController.loadFailed();
                    }
                  },
                  child: ListView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: value.result.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () async {
                            await Provider.of<MoviePhotosProvider>(context,
                                    listen: false)
                                .displayMoviePhotos(
                                    movieId: value.result[index].id!);
                            await Provider.of<RecommendationProvider>(context,
                                    listen: false)
                                .displayRecommendationMovies(
                                    movieId: value.result[index].id!);
                            await Provider.of<MovieReviewProvider>(context,
                                    listen: false)
                                .displayMoviesReviews(
                                    movieId: value.result[index].id!);

                            try {
                              await Provider.of<CastProvider>(context,
                                      listen: false)
                                  .displayCastMovie(
                                      movieId: value.result[index].id!);
                            } on Exception catch (e) {
                              print(e);
                              // TODO
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieScreen(
                                        mostPopular: value.result[index])));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Container(
                                  height: 130,
                                  margin: const EdgeInsets.only(right: 12),
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: scondryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      image:
                                          value.result[index].posterPath == null
                                              ? const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/logo.png"),
                                                  fit: BoxFit.fill)
                                              : DecorationImage(
                                                  image: NetworkImage(imgeUrl +
                                                      value.result[index]
                                                          .posterPath!),
                                                  fit: BoxFit.cover)),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    value.result[index].title!,
                                    style: const TextStyle(
                                      wordSpacing: 1,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: blackColor,
                                    ),
                                  ),
                                  Text(
                                    value.result[index].releaseDate!,
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
                                    value.result[index].releaseDate == null
                                        ? ""
                                        : value.result[index].releaseDate!,
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
                                child: Column(
                                  children: [
                                    Row(
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
                                          value.result[index].voteAverage
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          hive.onFavoritePress(index, context);
                                        },
                                        icon: getIcon(Provider.of<TestRepo>(
                                                context,
                                                listen: false)
                                            .result[index]
                                            .id))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            );
          }),
    );
  }
}
