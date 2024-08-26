part of 'theme_bloc.dart';

@immutable
abstract class ThemeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeInitialState extends ThemeState {}

class ThemeLoadedState extends ThemeState {
  final ThemeData themeData;

  ThemeLoadedState({
    required this.themeData,
  });

  @override
  List<Object?> get props => [themeData];
}
