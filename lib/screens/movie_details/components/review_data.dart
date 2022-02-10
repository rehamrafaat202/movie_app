import 'package:flutter/material.dart';
import 'package:movie/provider/movie_provider/movie_review_provider.dart';
import 'package:movie/provider/read_more_provider.dart';
import 'package:movie/style.dart';
import 'package:provider/provider.dart';

class ReviewData extends StatelessWidget {
  final int index;
  const ReviewData({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<MovieReviewProvider>(
        builder: (context, value, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value.result![index].authorDetails!.name!,
                style: const TextStyle(
                  wordSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: blackColor,
                ),
              ),
              Text(
                value.result![index].updatedAt!,
                style: const TextStyle(
                  wordSpacing: 1,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Consumer<ReadMore>(
                builder: (context, value, child) {
                  return Text(
                    Provider.of<MovieReviewProvider>(context)
                        .result![index]
                        .content!,
                    // reviews[index].paragraph!,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.3,
                    ),
                    maxLines: value.currentIndex == index ? null : 3,
                    softWrap: true,
                  );
                },
              ),
              InkWell(
                onTap: () {
                  Provider.of<ReadMore>(context, listen: false)
                      .changeText(index);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Consumer<ReadMore>(
                      builder: (context, value, child) {
                        return Icon(
                          value.currentIndex == index
                              ? Icons.arrow_upward_outlined
                              : Icons.arrow_downward,
                          color: scondryColor,
                          size: 17,
                        );
                      },
                    ),
                    Consumer<ReadMore>(
                      builder: (context, value, child) {
                        return Text(
                          value.currentIndex == index
                              ? "Read Less"
                              : "Read More",
                          style: const TextStyle(
                              fontSize: 15,
                              color: scondryColor,
                              fontWeight: FontWeight.bold),
                          maxLines: value.currentIndex == index ? null : 3,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
