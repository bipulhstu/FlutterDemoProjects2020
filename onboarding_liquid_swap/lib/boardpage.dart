import 'package:flutter/material.dart';

Widget boardPage(String imgUrl, String description, Color color) {
  return Container(
    color: color,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imgUrl),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
