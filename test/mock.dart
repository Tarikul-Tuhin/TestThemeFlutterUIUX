import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/app_themes.dart';

class Mock {
  static final appThemeData = {
    AppTheme.GreenLight: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.green,
    ),
    AppTheme.GreenDark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[700],
    ),
    AppTheme.BlueLight: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
    ),
    AppTheme.BlueDark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue[700],
    ),
  };
}
