import 'package:flutter/material.dart';
import 'package:movie/style.dart';

class PhotosScreenShots extends StatelessWidget {
  final String image;
  const PhotosScreenShots({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),

      width: 260,
      decoration: BoxDecoration(
          color: scondryColor,
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      // child: Text("kllj"),
    );
  }
}
