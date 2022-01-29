import 'package:flutter/material.dart';
import 'package:movie/style.dart';

class StoryLine extends StatefulWidget {
  final String paragraph;
  const StoryLine({required this.paragraph, Key? key}) : super(key: key);

  @override
  State<StoryLine> createState() => _StoryLineState();
}

class _StoryLineState extends State<StoryLine> {
  bool readMore = false;
  void changeText() {
    setState(() {
      readMore = !readMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "storyline".toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.paragraph,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  height: 1.3,
                ),
                maxLines: !readMore ? 3 : null,
                softWrap: true,
              ),
              InkWell(
                onTap: () => changeText(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      !readMore
                          ? Icons.arrow_downward
                          : Icons.arrow_upward_outlined,
                      color: scondryColor,
                      size: 17,
                    ),
                    Text(
                      readMore ? "Read Less" : "Read More",
                      style: const TextStyle(
                          fontSize: 15,
                          color: scondryColor,
                          fontWeight: FontWeight.bold),
                      maxLines: !readMore ? 3 : null,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
