import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/coming_soon_model.dart';
import 'package:movie/provider/coming_soon_provider.dart';
import 'package:movie/provider/now_playing_provider.dart';

import 'package:movie/widgets/film_poster.dart';
import 'package:provider/provider.dart';

class ComingSoonCollection extends StatefulWidget {
  const ComingSoonCollection({Key? key}) : super(key: key);

  @override
  State<ComingSoonCollection> createState() => _ComingSoonCollectionState();
}

class _ComingSoonCollectionState extends State<ComingSoonCollection> {
  // @override
  // void didChangeDependencies() {
  //   Provider.of<NowPlayingProvider>(context, listen: false).displayNowPlaying();

  //   super.didChangeDependencies();
  // }

  bool seeAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coming Soon".toUpperCase(),
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
        ),
        Provider.of<ComingSoonProvider>(context, listen: true).result == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 280,
                child: Consumer<ComingSoonProvider>(
                  builder: (context, value, child) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: !seeAll
                          ? value.result!.take(3).toList().length
                          : value.result!.length,
                      itemBuilder: (context, index) {
                        return FilmPoster(
                            image: imgeUrl + value.result![index].posterPath!,
                            subTitle: value.result![index].originalTitle!,
                            title: value.result![index].title!);
                      },
                    );
                  },
                ),
              )
      ],
    );
  }
}
