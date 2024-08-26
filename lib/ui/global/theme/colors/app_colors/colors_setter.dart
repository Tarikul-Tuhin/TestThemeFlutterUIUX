import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/app_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/dark_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/light_colors.dart';

class ColorsSetter {
  static AppColors? _lightColors;
  static AppColors? _darkColors;
  static AppColors get lightColors => _lightColors!;
  static AppColors get darkColors => _darkColors!;

  static Future<void> setLightAndDarkColors({String data = ''}) async {
    // fetch api colors from api or cache
    Map lightColorsFromApi = {};
    Map darkColorsFromApi = {};
    final LightColors lightColors = LightColors(lightColorsFromApi);
    final DarkColors darkColors = DarkColors(darkColorsFromApi);
    _lightColors = lightColors.getLightColors;
    _darkColors = darkColors.getDarkColors;
  }
}
