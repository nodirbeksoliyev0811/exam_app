import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:exam_app/service/di/di.dart';
import 'package:exam_app/service/storage/secure_storage.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final secureStorage = locator<SecureStorage>();
  ThemeBloc() : super(const ThemeState.initial(themeMode: ThemeMode.system)) {
    on<ThemeEvent>(
      (event, emit) {
        event.when(
          started: () {
            emit(state.copyWith(themeMode: secureStorage.getTheme()));
          },
          setTheme: (mode) {
            secureStorage.setTheme(mode);
            emit(state.copyWith(themeMode: mode));
          },
        );
      },
    );
  }
}
