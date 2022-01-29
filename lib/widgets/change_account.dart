import 'package:flutter/material.dart';
import 'package:movie/style.dart';

class ChangeAccount extends StatelessWidget {
  final String paragraph;
  final String type;
  final Function function;
  const ChangeAccount({
    required this.function,
    required this.paragraph,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(paragraph),
        TextButton(
          onPressed: () => function(),
          child: Text(
            type,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: scondryColor),
          ),
        )
      ],
    );
  }
}
