import 'package:flutter/material.dart';
import 'package:shared/utils/colors.dart';
ThemeData buildFreshTheme() => ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: FreshColors.red, primary: FreshColors.red),
  scaffoldBackgroundColor: Colors.white,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white, foregroundColor: FreshColors.text, elevation: 0),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
    backgroundColor: FreshColors.red, foregroundColor: Colors.white,
    minimumSize: const Size.fromHeight(48), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
  )),
);
