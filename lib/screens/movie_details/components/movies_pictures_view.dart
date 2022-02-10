import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/repository/movie_repo/test_repo.dart';
import 'package:movie/provider/movie_provider/movie_photo_provider.dart';

import 'package:movie/widgets/photo_screen_shots.dart';
import 'package:provider/provider.dart';

class MoviesPicturesView extends StatefulWidget {
  const MoviesPicturesView({Key? key}) : super(key: key);

  @override
  State<MoviesPicturesView> createState() => _MoviesPicturesViewState();
}

class _MoviesPicturesViewState extends State<MoviesPicturesView> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Photo".toUpperCase(),
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
          SizedBox(
            height: 200,
            child: Consumer<MoviePhotosProvider>(
              builder: (context, value, child) {
                // print(imgeUrl + value.result![8].filePath!);
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: !seeAll
                      ? value.result!.take(3).toList().length
                      : value.result!.length,
                  itemBuilder: (context, index) {
                    return PhotosScreenShots(
                      image: imgeUrl + value.result![index].filePath!,
                    );
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
