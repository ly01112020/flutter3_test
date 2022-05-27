import 'package:flutter/material.dart';

Widget LyButton(text, onClick) {
  return Column(
    children: [
      ElevatedButton(
          child: Text(text),
          onPressed: onClick
      ),
      const SizedBox(height: 8.0),
    ],
  );
}