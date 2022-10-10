part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppThemeChangedEvent extends AppEvent {
  final AppTheme theme;

  AppThemeChangedEvent({required this.theme});

  @override
  List<Object> get props => [theme];
}
