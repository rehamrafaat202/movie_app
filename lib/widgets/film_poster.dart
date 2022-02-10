import 'package:flutter/material.dart';
import 'package:movie/style.dart';

class FilmPoster extends StatelessWidget {
  final String title;
  final String image;
  final String subTitle;

  const FilmPoster(
      {required this.image,
      required this.subTitle,
      required this.title,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 180,
            width: 100,
            decoration: BoxDecoration(
              color: scondryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: image.isEmpty
                  ? FadeInImage(
                      image: NetworkImage(image),
                      placeholder: const AssetImage(" assets/images/logo.png"),
                      fit: BoxFit.cover,
                    )
                  : FadeInImage(
                      image: NetworkImage(image),
                      placeholder: const AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Expanded(
            child: Container(
              width: 100,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              subTitle,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
