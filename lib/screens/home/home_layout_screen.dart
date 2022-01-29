import 'package:flutter/material.dart';
import 'package:movie/screens/home/component/body.dart';
import 'package:movie/screens/home/component/home_drawer.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png"),
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
