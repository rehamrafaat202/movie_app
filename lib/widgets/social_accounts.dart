import 'package:flutter/material.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: defaultSocialWidget(
          title: "facebook",
          image: "assets/images/face.png",
        )),
        Expanded(
            child: defaultSocialWidget(
                title: "Google",
                image: "assets/images/google.png",
                isGoogle: true)),
      ],
    );
  }

  Widget defaultSocialWidget({title, image, isGoogle = false}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: isGoogle ? Border.all(color: Colors.black12) : null,
          color: isGoogle ? Colors.white : Colors.blue,
          borderRadius: BorderRadius.circular(35.0),
        ),
        height: 66,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                      color: isGoogle ? Colors.black : Colors.white,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
