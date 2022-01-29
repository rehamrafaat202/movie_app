import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie/models/home_banner_model.dart';
import 'package:movie/style.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (context, index, realIndex) {
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
                  banners[index].image!,
                ),
                fit: BoxFit.cover,
              )),
        );
      },
      options: CarouselOptions(
        height: 230,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
        aspectRatio: 0.1,
        viewportFraction: 1.0,
      ),
    );
  }
}
