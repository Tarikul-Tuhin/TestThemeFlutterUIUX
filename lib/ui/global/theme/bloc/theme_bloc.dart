import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitialState()) {
    on<ThemeLoadEvent>((event, emit) async {
      emit(ThemeLoadedState(
          themeData: appThemeData[await getThemeFromStorage()]!));
    });

    on<ThemeChangeEvent>((event, emit) async {
      emit(ThemeLoadedState(themeData: appThemeData[event.theme]!));
      await setThemeToStorage(event.theme);
    });
  }

  AppTheme getConvertedThemeFromString(String theme) {
    switch (theme) {
      case 'AppTheme.GreenLight':
        return AppTheme.GreenLight;
      case 'AppTheme.GreenDark':
        return AppTheme.GreenDark;
      case 'AppTheme.BlueLight':
        return AppTheme.BlueLight;
      default:
        return AppTheme.BlueDark;
    }
  }

  Future<AppTheme> getThemeFromStorage() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final theme =
        sharedPreferences.getString('theme') ?? AppTheme.GreenLight.toString();

    return getConvertedThemeFromString(theme);
  }

  Future<void> setThemeToStorage(AppTheme appTheme) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    await sharedPreferences.setString('theme', appTheme.toString());
  }
}
