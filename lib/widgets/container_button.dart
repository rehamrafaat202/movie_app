import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String title;
  final Function function;
  const ContainerButton({required this.function, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfffb5558),
            borderRadius: BorderRadius.circular(28.0),
          ),
          height: 50,
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
