import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repaso_todos_theme/app/bloc/app_bloc.dart';

import '../app/app_themes.dart';

class PreferencesPage extends StatelessWidget {
  PreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferences"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          var _itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[_itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                _itemAppTheme.toString(),
                style: appThemeData[_itemAppTheme]!.textTheme.bodyMedium,
              ),
              onTap: () {
                BlocProvider.of<AppBloc>(context).add(
                  AppThemeChangedEvent(theme: _itemAppTheme),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
