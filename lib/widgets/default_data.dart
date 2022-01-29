import 'package:flutter/material.dart';
import 'package:movie/style.dart';

Widget defaultDataRow({
  title,
  description,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              wordSpacing: 1,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),

            // softWrap: true,
          ),
        ),
        Expanded(
          child: Text(
            description.toString(),
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        )
      ],
    ),
  );
}
