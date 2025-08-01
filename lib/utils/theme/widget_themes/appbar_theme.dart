import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: CommonColors.dark, size: 18.0),
    actionsIconTheme: IconThemeData(color: CommonColors.dark, size: 18.0),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: CommonColors.white, size: 18.0),
    actionsIconTheme: IconThemeData(color: CommonColors.white, size: 18.0),
  );
}
