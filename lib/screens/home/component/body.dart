import 'package:flutter/material.dart';
import 'package:movie/screens/home/component/coming_soon_collection.dart';

import 'package:movie/screens/home/component/home_banner.dart';
import 'package:movie/screens/home/component/most_popular.dart';
import 'package:movie/screens/home/component/new_collection.dart';
import 'package:movie/screens/home/component/trailer_view.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeBanner(),
            MostPopular(),
            TrailersView(),
            NewCollection(),
            ComingSoonCollection()
          ],
        ),
      ),
    );
  }
}
