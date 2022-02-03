import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/models/actor_model.dart';
import 'package:movie/data/models/cast_model.dart';
import 'package:movie/style.dart';
import 'package:movie/widgets/default_data.dart';

class ActorBio extends StatelessWidget {
  final Cast actorModel;
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
              tag: actorModel.id!,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: actorModel.profilePath == null
                    ? const NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_kcIiGCUdlQDi5AmeHqSu-8xomV24HzGYsQ&usqp=CAU")
                    : NetworkImage(imgeUrl + actorModel.profilePath!),
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
                  actorModel.character!,
                  style: const TextStyle(
                    wordSpacing: 1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                defaultDataRow(
                    title: "Gender",
                    description: actorModel.gender == 2 ? "Male" : "Female"),
                defaultDataRow(
                    title: "known For Department",
                    description: actorModel.knownForDepartment),
                defaultDataRow(
                    title: "popularity", description: actorModel.popularity),
              ],
            ),
          )
        ],
      ),
    );
  }
}
