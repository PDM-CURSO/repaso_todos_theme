import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repaso_todos_theme/home/bloc/todos_bloc.dart';
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
      body: BlocConsumer<TodosBloc, TodosState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Text(
                    "Ingrese el To-Do para agregar",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Container(child: CreateTodoForm()),
                Divider(thickness: 4),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: TodoList(
                    listContent:
                        BlocProvider.of<TodosBloc>(context).getTodosList,
                  ),
                ),
                Divider(thickness: 4),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: CompletedList(
                    listContent: BlocProvider.of<TodosBloc>(context)
                        .getCompletedTodosList,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
