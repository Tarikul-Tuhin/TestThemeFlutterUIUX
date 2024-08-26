part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeLoadEvent extends ThemeEvent {
  @override
  List<Object> get props => [];
}

class ThemeChangeEvent extends ThemeEvent {
  final AppTheme theme;

  const ThemeChangeEvent({
    required this.theme,
  }) : super();

  @override
  List<Object> get props => [theme];
}
