import 'package:flutter/material.dart';
import 'package:movie/data/models/news_banner_model.dart';
import 'package:movie/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsBanner extends StatefulWidget {
  const NewsBanner({Key? key}) : super(key: key);

  @override
  State<NewsBanner> createState() => _NewsBannerState();
}

class _NewsBannerState extends State<NewsBanner> {
  bool isLast = false;
  var boardingController = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 220,
          child: PageView.builder(
            controller: boardingController,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => defaultBanner(items[index]),
            itemCount: items.length,
          ),
        ),
        Positioned(
          left: 130,
          bottom: 10,
          child: Row(
            children: [
              SmoothPageIndicator(
                  effect: const ExpandingDotsEffect(
                      dotHeight: 7,
                      activeDotColor: Colors.white,
                      dotColor: Colors.white,
                      expansionFactor: 6,
                      dotWidth: 7,
                      spacing: 5.0),
                  controller: boardingController,
                  count: items.length),
            ],
          ),
        )
      ],
    );
  }

  Widget defaultBanner(NewsBannerModel model) {
    return Container(
      width: double.infinity,
      // color: Colors.red,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: primaryColor),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: NetworkImage(
              model.image,
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
