import 'package:flutter/material.dart';
import 'package:movie/screens/auth/login_screen.dart';
import 'package:movie/screens/home/home_layout_screen.dart';
import 'package:movie/screens/news/news_screen.dart';
import 'package:movie/style.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Reham Rafaat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Column(
              children: [
                defaultdrawerWidgets(
                    icon: Icons.home_outlined,
                    title: "Home",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeLayoutScreen()));
                    }),
                defaultdrawerWidgets(
                    icon: Icons.account_circle_outlined,
                    title: "Profile ",
                    press: () {}),
                defaultdrawerWidgets(
                    icon: Icons.vpn_lock_sharp,
                    title: "News",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewsScreen()));
                    }),
                defaultdrawerWidgets(
                    icon: Icons.favorite_outline,
                    title: "Favourite",
                    press: () {}),
                defaultdrawerWidgets(
                    icon: Icons.star_border_rounded,
                    title: "Recommendations",
                    press: () {}),
                defaultdrawerWidgets(
                    icon: Icons.settings, title: "Settings", press: () {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: defaultdrawerWidgets(
                icon: Icons.power_settings_new,
                title: "Logout",
                icnColor: primaryColor,
                press: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (Route<dynamic> route) => false);
                }),
          )
        ],
      ),
    );
  }

  Widget defaultdrawerWidgets({icon, title, press, icnColor = blackColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: icnColor,
          ),
          TextButton(
              onPressed: press,
              child: Text(
                title,
                style: const TextStyle(fontSize: 18, color: Colors.black87),
              ))
        ],
      ),
    );
  }
}
