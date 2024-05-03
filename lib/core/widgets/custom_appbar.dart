import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switch_bloc/features/theme_bloc/theme_event.dart';

import '../../features/theme_bloc/theme_bloc.dart';

PreferredSizeWidget CustomAppbar(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      BlocBuilder<ThemeBloc, bool>(
        builder: (context, state) {
          return Switch(
            value: state,
            onChanged: (bool val) {
              context.read<ThemeBloc>().add(ChangeTheme());
            },
          );
        },
      ),
    ],
  );
}
