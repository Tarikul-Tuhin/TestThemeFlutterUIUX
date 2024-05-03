import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switch_bloc/config/routes/routes.dart';
import 'package:theme_switch_bloc/config/theme/app_theme.dart';
import 'package:theme_switch_bloc/config/theme/colors.dart';
import 'package:theme_switch_bloc/features/theme_bloc/theme_bloc.dart';
import 'package:theme_switch_bloc/features/theme_bloc/theme_event.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeBloc()
        ..add(
          SetInitialTheme(),
        ),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  late RouterConfig<Object> _routerConfig;

  @override
  void initState() {
    super.initState();
    _routerConfig = AppRouter(
      rootNavigatorKey: rootNavigatorKey,
    ).router;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: state
              ? AppTheme(AppColors.darkColors).getTheme()
              : AppTheme(AppColors.mainColors).getTheme(),
          routerConfig: _routerConfig,
        );
      },
    );
  }
}
