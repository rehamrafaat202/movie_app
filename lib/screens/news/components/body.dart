import 'package:flutter/material.dart';
import 'package:movie/screens/news/components/new_grideview.dart';
import 'package:movie/screens/news/components/news_banner.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: const [NewsBanner(), const NewsGideview()],
        ),
      ),
    );
  }
}
