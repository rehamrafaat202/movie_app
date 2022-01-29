import 'package:flutter/material.dart';
import 'package:movie/models/actor_model.dart';
import 'package:movie/screens/actor/actor_info_screen.dart';

class CastView extends StatelessWidget {
  const CastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              "cast".toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Container(
            height: 160,
            // color: Colors.red,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: actors.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActorInfoScreen(
                                    actorModel: actors[index]))),
                        child: Hero(
                          tag: actors[index].image!,
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage: NetworkImage(actors[index].image!),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            width: 100,
                            child: Text(
                              actors[index].name!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              softWrap: true,
                            )),
                      ))
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
