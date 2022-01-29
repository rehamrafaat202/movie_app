import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/screens/movie_details/movie_screen.dart';
import 'package:movie/style.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            "Most Popular Movies",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: popular.length,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieScreen(
                                      mostPopular: popular[index],
                                    ))),
                        child: Hero(
                          tag: popular[index].image!,
                          child: Container(
                            // height: 180,
                            width: 125,
                            decoration: BoxDecoration(
                                color: scondryColor,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(popular[index].image!),
                                    fit: BoxFit.cover)),
                            // child: Text("kllj"),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 125,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        popular[index].title!,
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
                            popular[index].rete.toString(),
                            style: const TextStyle(color: Colors.grey),
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
          ),
        ),
      ],
    );
  }
}
