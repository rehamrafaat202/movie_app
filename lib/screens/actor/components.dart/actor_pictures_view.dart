import 'package:flutter/material.dart';
import 'package:movie/models/actor_photos_model.dart';

import 'package:movie/widgets/photo_screen_shots.dart';

class ActorPicturesView extends StatelessWidget {
  const ActorPicturesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Photo".toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: actorPhotos.length,
              itemBuilder: (context, index) {
                return PhotosScreenShots(
                  image: actorPhotos[index].image!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
