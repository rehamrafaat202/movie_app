import 'package:flutter/material.dart';
import 'package:movie/data/models/news_movies_model.dart';
import 'package:movie/screens/news/components/build_news_item.dart';
import 'package:movie/style.dart';

class NewsGideview extends StatelessWidget {
  const NewsGideview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        // color: Colors.grey[300],
        child: GridView.builder(
            itemCount: newModel.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 1 / 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return buildCategoryItem(newModel[index]);
            }));
  }
}
