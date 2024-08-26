import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_switch_bloc/ui/global/theme/app_themes.dart';
import 'package:theme_switch_bloc/ui/global/theme/bloc/theme_bloc.dart';

import '../mock.dart' as mock;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  group('Testing Block', () {
    late ThemeBloc themeBloc;
    setUp(() {
      themeBloc = ThemeBloc();
    });

    blocTest<ThemeBloc, ThemeState>(
      'Test initial State',
      build: () => themeBloc,
      verify: (bloc) => bloc.state is ThemeInitialState,
    );

    blocTest<ThemeBloc, ThemeState>(
      'Test with mock data',
      build: () => themeBloc,
      act: (bloc) {
        bloc.add(
          const ThemeChangeEvent(theme: AppTheme.BlueDark),
        );
      },
      verify: (bloc) => bloc.state is ThemeLoadedState,
      expect: () => [
        ThemeLoadedState(themeData: mock.Mock.appThemeData[AppTheme.BlueDark]!)
      ],
    );
  });
}
