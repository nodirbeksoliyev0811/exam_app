part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started() = _Started;
  const factory ThemeEvent.setTheme(ThemeMode mode) = _SetTheme;
}
