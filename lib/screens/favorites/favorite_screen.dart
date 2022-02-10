import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/data/repository/movie_repo/test_repo.dart';

import 'package:movie/style.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:cancelable/cancelable.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FavorieScreen extends StatelessWidget {
  FavorieScreen({Key? key}) : super(key: key);
  Box? favorit;
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
        title: Text("FAVORITES"),
      ),
      body: ValueListenableBuilder<Box<dynamic>>(
          valueListenable: Hive.box<Results>(testModel).listenable(),
          builder: (context, box, _) {
            var boxData = box.values.toList();
            // print("DDDDDd${.length}");
            return ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: boxData.length,
                itemBuilder: (context, index) {
                  // print("ggggg${box.get(value.result[index].id)}");

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
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
                                image: boxData[index].posterPath == null
                                    ? const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/logo.png"),
                                        fit: BoxFit.fill)
                                    : DecorationImage(
                                        image: NetworkImage(imgeUrl +
                                            boxData[index].posterPath!),
                                        fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              boxData[index].title!,
                              style: const TextStyle(
                                wordSpacing: 1,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: blackColor,
                              ),
                            ),
                            Text(
                              boxData[index].releaseDate!,
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
                              boxData[index].releaseDate == null
                                  ? ""
                                  : boxData[index].releaseDate!,
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
                                    boxData[index].voteAverage.toString(),
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
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
