import 'package:flutter/material.dart';

class CustomTextTheme {
  static TextTheme get textTheme {
    return const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'SukhumvitSet',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 20.0,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'SukhumvitSet',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 10.0,
      ),
    );
  }
}
