import 'package:flutter/material.dart';
import 'package:movie/data/models/actor_model.dart';
import 'package:movie/data/models/cast_model.dart';
import 'package:movie/screens/actor/components.dart/actor_all_movies_view.dart';
import 'package:movie/screens/actor/components.dart/actor_bio.dart';
import 'package:movie/screens/actor/components.dart/actor_pictures_view.dart';
import 'package:movie/screens/actor/components.dart/succes_movies_view.dart';

class Body extends StatelessWidget {
  final Cast actorModel;
  const Body({required this.actorModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ActorBio(actorModel: actorModel),
          const ActorPicturesView(),
          const SuccessMoviesView(),
          const ActorAllMoviesView()
        ],
      ),
    );
  }
}
