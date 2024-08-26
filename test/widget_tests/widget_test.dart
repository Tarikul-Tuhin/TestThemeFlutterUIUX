import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:theme_switch_bloc/home_page.dart';
import 'package:theme_switch_bloc/ui/global/theme/app_themes.dart';

import '../mock.dart';

void main() {
  final greenLightTheme = Mock.appThemeData[AppTheme.GreenLight];
  final greeDarkTheme = Mock.appThemeData[AppTheme.GreenDark];

  group('test theme', () {
    testWidgets("Test Green light Theme", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        theme: greenLightTheme,
        home: const HomePage(),
      ));

      expect(find.byKey(const Key('AppBar')), findsOneWidget);
      expect(find.text('Home'), findsAtLeastNWidgets(2));
      expect(
          (tester.widget(find.byKey(const Key('AppBar'))) as AppBar)
              .backgroundColor,
          greenLightTheme?.primaryColor);
    });

    testWidgets("Test Green Dark Theme", (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        theme: greeDarkTheme,
        home: const HomePage(),
      ));

      expect(find.byKey(const Key('AppBar')), findsOneWidget);
      expect(find.text('Home'), findsAtLeastNWidgets(2));
      expect(
          (tester.widget(find.byKey(const Key('AppBar'))) as AppBar)
              .backgroundColor,
          greeDarkTheme?.primaryColor);
    });
  });
}
