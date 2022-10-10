import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:repaso_todos_theme/app/app_themes.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppThemeState> {
  AppBloc()
      : super(AppThemeState(themeData: appThemeData[AppTheme.GreenLight]!)) {
    on<AppThemeChangedEvent>((event, emit) {
      emit(AppThemeState(themeData: appThemeData[event.theme]!));
    });
  }
}
