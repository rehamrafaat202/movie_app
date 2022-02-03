import 'package:flutter/material.dart';
import 'package:movie/provider/most_popular_provider.dart';
import 'package:movie/screens/home/component/body.dart';
import 'package:movie/screens/home/component/home_drawer.dart';
import 'package:provider/provider.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
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
