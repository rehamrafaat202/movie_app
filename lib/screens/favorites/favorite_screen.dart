import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:movie/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //   body: ValueListenableBuilder(
      //     valueListenable: Hive.box(fav).listenable(),
      //     builder: (context, data, child) {
      //       List movies =List.from(data.v);
      //       return ListView();
      //     },
      //   ),
    );
  }
}
