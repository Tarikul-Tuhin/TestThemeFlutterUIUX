import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switch_bloc/home_page.dart';
import 'package:theme_switch_bloc/icons/app_icons.dart';
import 'package:theme_switch_bloc/icons/icons_setter.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/colors_setter.dart';
import 'ui/global/theme/bloc/theme_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ColorsSetter.setLightAndDarkColors();
  await AppIcons.setIcons();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(ThemeLoadEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previous, current) => current is ThemeLoadedState,
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    if (state is ThemeLoadedState) {
      return MaterialApp(
        title: 'Material App',
        home: const HomePage(),
        theme: state.themeData,
        debugShowCheckedModeBanner: false,
        color: Theme.of(context).primaryColor,
      );
    }
    return const SizedBox.shrink();
  }
}

// Color getColorFromMap(String colorKey, Map<dynamic, dynamic> colorMap) {
//   print(colorKey);
//   // Extract the keys
//   List<String> keys = colorKey.replaceAll(RegExp(r'[{}]'), '').split('.');
//   if (keys.length != 3) {
//     return Color(0xffffff);
//   }

//   String colorCategory = keys[0];
//   String colorType = keys[1];
//   String colorValue = keys[2];

//   // Retrieve the color value from the map
//   if (!colorMap.containsKey(colorCategory)) {
//     return Color(0xffffff);
//   }
//   dynamic value = colorMap[colorCategory][colorType][colorValue]['value'];
//   if (value == null) {
//     return Color(0xffffff);
//   }

//   // Return the color object
//   print('0xff' + value.substring(1));
//   return Color(int.parse('0xff' + value.substring(1)));
// }
