import 'package:flutter/material.dart';
import 'package:movie/models/actor_model.dart';
import 'package:movie/screens/actor/components.dart/body.dart';

class ActorInfoScreen extends StatelessWidget {
  final ActorModel actorModel;
  const ActorInfoScreen({required this.actorModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              // size: 40,
            )),
        elevation: 0.8,
        title: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 200,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                // size: 40,
              )),
        ],
      ),
      body: Body(actorModel: actorModel),
    );
  }
}
