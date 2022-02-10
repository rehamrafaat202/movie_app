import 'package:flutter/material.dart';
import 'package:movie/constants.dart';
import 'package:movie/provider/cast_provider/actor_photos_provider.dart';

import 'package:movie/widgets/photo_screen_shots.dart';
import 'package:provider/provider.dart';

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
            child: Consumer<ActorPhotosProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.result!.length,
                  itemBuilder: (context, index) {
                    return PhotosScreenShots(
                        image: imgeUrl + value.result![index].filePath!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
