import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/provider/cast_provider/cast_provider.dart';
import 'package:movie/provider/cast_provider/actor_all_movies_provider.dart';
import 'package:movie/provider/cast_provider/actor_photos_provider.dart';
import 'package:movie/screens/actor/actor_info_screen.dart';
import 'package:provider/provider.dart';

class CastView extends StatefulWidget {
  const CastView({Key? key}) : super(key: key);

  @override
  State<CastView> createState() => _CastViewState();
}

class _CastViewState extends State<CastView> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "cast".toUpperCase(),
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
            height: 160,
            // color: Colors.red,
            child: Consumer<CastProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: !seeAll
                        ? value.result!.take(5).toList().length
                        : value.result!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              await Provider.of<ActorPhotosProvider>(context,
                                      listen: false)
                                  .displayActorPhotos(
                                      personId: value.result![index].id!);
                              await Provider.of<ActorAllmoviesProvider>(context,
                                      listen: false)
                                  .displayAllActorMovies(
                                      personId: value.result![index].id!);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ActorInfoScreen(
                                          actorModel: value.result![index])));
                            },
                            child: Hero(
                              tag: value.result![index].id!,
                              child: CircleAvatar(
                                radius: 55,
                                backgroundImage: value
                                            .result![index].profilePath ==
                                        null
                                    ? const NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_kcIiGCUdlQDi5AmeHqSu-8xomV24HzGYsQ&usqp=CAU")
                                    : NetworkImage(imgeUrl +
                                        value.result![index].profilePath!),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                width: 100,
                                child: Text(
                                  value.result![index].name!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400),
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  softWrap: true,
                                )),
                          ))
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
