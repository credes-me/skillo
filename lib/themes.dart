import 'package:flutter/material.dart';

class AppThemes {


  static TextStyle displayLarge({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 24,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle displayMedium({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 22,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle displaySmall({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle headlineMedium({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 18,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle headlineSmall({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle titleLarge({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle titleMedium({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }

  static TextStyle titleSmall({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }

  static TextStyle bodyLarge({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }

  static TextStyle bodyMedium({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }

  static TextStyle bodySmall({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 12,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }

  static TextStyle labelLarge({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.bold,
        color: color ?? Colors.white);
  }

  static TextStyle labelSmall({color, fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 10,
        fontWeight: FontWeight.normal,
        color: color ?? Colors.white);
  }


}
