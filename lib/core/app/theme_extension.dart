import 'package:flutter/material.dart';
extension ThemeExtensions on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;  // Access TextScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  // ColorScheme colorScheme(BuildContext context) => Theme.of(context).colorScheme;
  ThemeData get theme => Theme.of(this);
}
