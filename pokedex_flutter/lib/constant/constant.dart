import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = "PokeDex";

  static TextStyle titleTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 48,
    );
  }
}
