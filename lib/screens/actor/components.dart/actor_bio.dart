import 'package:flutter/material.dart';
import 'package:movie/models/actor_model.dart';
import 'package:movie/style.dart';
import 'package:movie/widgets/default_data.dart';

class ActorBio extends StatelessWidget {
  final ActorModel actorModel;
  const ActorBio({required this.actorModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Hero(
              tag: actorModel.image!,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(actorModel.image!),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  actorModel.name!.toUpperCase(),
                  style: const TextStyle(
                    wordSpacing: 1,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  actorModel.jobDescription!,
                  style: const TextStyle(
                    wordSpacing: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                defaultDataRow(
                    title: "Date Of Birth",
                    description: actorModel.dateOfBirth),
                defaultDataRow(
                    title: "Place Of Birth",
                    description: actorModel.placeOfBirth),
                defaultDataRow(
                    title: "Total Films", description: actorModel.totalFilms),
              ],
            ),
          )
        ],
      ),
    );
  }
}
