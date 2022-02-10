import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/new_model.dart';
import 'package:movie/provider/movie_provider/now_playing_provider.dart';
import 'package:movie/widgets/film_poster.dart';
import 'package:provider/provider.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  State<NewCollection> createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "NEW",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
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
        Provider.of<NowPlayingProvider>(context, listen: true).result == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 280,
                child: Consumer<NowPlayingProvider>(
                  builder: (context, value, child) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: !seeAll
                          ? value.result!.take(4).toList().length
                          : value.result!.length,
                      itemBuilder: (context, index) {
                        return FilmPoster(
                            image: imgeUrl + value.result![index].posterPath!,
                            subTitle: value.result![index].title!,
                            title: value.result![index].originalTitle!);
                      },
                    );
                  },
                ),
              ),
      ],
    );
  }
}
