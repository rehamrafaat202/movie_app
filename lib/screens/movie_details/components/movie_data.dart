import 'package:flutter/material.dart';
import 'package:movie/data/models/test.dart';
import 'package:movie/style.dart';

class MovieData extends StatelessWidget {
  final Results mostPopularModel;
  const MovieData({required this.mostPopularModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          defaultDataRow(
              title: "Release Date: ",
              description: mostPopularModel.releaseDate,
              textColor: Colors.grey),
          defaultDataRow(
            title: "popularity: ",
            description: mostPopularModel.popularity,
          ),

          defaultDataRow(
            title: "voteCount: ",
            description: mostPopularModel.voteCount.toString(),
          ),
          // defaultDataRow(
          //     title: "Box Office: ",
          //     description: mostPopularModel.boxOffice,
          //     textColor: Colors.grey),
        ],
      ),
    );
  }

  Widget defaultDataRow({title, description, textColor = scondryColor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              wordSpacing: 1,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: blackColor,
            ),

            // softWrap: true,
          ),
          Text(
            description.toString(),
            style: TextStyle(
                wordSpacing: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: textColor),
          )
        ],
      ),
    );
  }
}
