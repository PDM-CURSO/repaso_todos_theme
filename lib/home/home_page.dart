import 'package:flutter/material.dart';
import 'package:repaso_todos_theme/home/completed/completed_list.dart';
import 'package:repaso_todos_theme/home/todo/todo_list.dart';

import '../settings/preferences_page.dart';
import 'create_form/create_todo_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do"),
        actions: [
          IconButton(
            tooltip: "Settings",
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PreferencesPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: Text(
              "Ingrese el To-Do para agregar",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(child: CreateTodoForm()),
          Expanded(child: TodoList(listContent: ["Ir a comer", "Viajar"])),
          Expanded(child: CompletedList(listContent: ["Desayuno", "Alarma"])),
        ],
      ),
    );
  }
}
