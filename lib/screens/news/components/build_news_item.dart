import 'package:flutter/material.dart';
import 'package:movie/data/models/news_movies_model.dart';
import 'package:movie/style.dart';

Widget buildCategoryItem(NewsMoviesModl model) => Container(
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            margin: const EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: primaryColor),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: NetworkImage(
                    '${model.image}',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(
              model.title!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: const [
              Text(
                "5 may,2022",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Icon(
                Icons.comment_bank_outlined,
                color: Colors.grey,
                size: 14,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "13",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.favorite_border,
                size: 14,
                color: Colors.grey,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "130",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
