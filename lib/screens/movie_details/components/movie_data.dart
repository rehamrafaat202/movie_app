import 'package:flutter/material.dart';
import 'package:movie/models/most_popular_model.dart';
import 'package:movie/style.dart';

class MovieData extends StatelessWidget {
  final MostPopularModel mostPopularModel;
  const MovieData({required this.mostPopularModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          defaultDataRow(
              title: "Release Date: ",
              description: mostPopularModel.date,
              textColor: Colors.grey),
          defaultDataRow(
            title: "Director: ",
            description: mostPopularModel.director,
          ),
          defaultDataRow(
            title: "Producer: ",
            description: mostPopularModel.producer,
          ),
          defaultDataRow(
            title: "Composer: ",
            description: mostPopularModel.composer,
          ),
          defaultDataRow(
              title: "Box Office: ",
              description: mostPopularModel.boxOffice,
              textColor: Colors.grey),
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
            description,
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
