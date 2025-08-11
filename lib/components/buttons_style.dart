import 'package:flutter/material.dart';

class AppButtonStyles {
  static final ButtonStyle mainButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    padding: const EdgeInsets.symmetric(vertical: 16.0),
  );
}