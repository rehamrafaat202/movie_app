import 'package:flutter/material.dart';
import 'package:movie/screens/home/component/home_drawer.dart';
import 'package:movie/screens/news/components/body.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("NEWS"),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: const Body(),
    );
  }
}
