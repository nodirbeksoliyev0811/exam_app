part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required ThemeMode themeMode}) = _Initial;
}
