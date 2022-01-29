import 'package:flutter/material.dart';
import 'package:movie/models/trailer_model.dart';
import 'package:movie/style.dart';

class TrailersView extends StatelessWidget {
  const TrailersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text(
            "TRAILERS",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: trailers.length,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 8.0),
                    width: 260,
                    decoration: BoxDecoration(
                        color: scondryColor,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(trailers[index].image!),
                            fit: BoxFit.cover)),
                  ),
                  Center(
                      child: Image.asset(
                    "assets/images/play.png",
                    fit: BoxFit.cover,
                    width: 50,
                  )),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
