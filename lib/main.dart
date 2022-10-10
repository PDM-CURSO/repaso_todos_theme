import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repaso_todos_theme/app/bloc/app_bloc.dart';
import 'package:repaso_todos_theme/home/bloc/todos_bloc.dart';
import 'package:repaso_todos_theme/home/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(),
        ),
        BlocProvider(
          create: (context) => TodosBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppThemeState>(
      builder: (context, state) {
        return MaterialApp(
          home: HomePage(),
          theme: state.themeData,
        );
      },
    );
  }
}
