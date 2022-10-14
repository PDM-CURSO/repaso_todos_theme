import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repaso_todos_theme/home/bloc/todos_bloc.dart';

class ItemTodo extends StatelessWidget {
  final String todoDescription;
  final bool isChecked;
  final int itemAt;
  ItemTodo({
    Key? key,
    required this.todoDescription,
    this.isChecked = false,
    required this.itemAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todoDescription),
      secondary: IconButton(
        onPressed: () {
          // todo_bloc remove forever
          BlocProvider.of<TodosBloc>(context).add(
            DeleteTodoEvent(index: itemAt),
          );
        },
        icon: Icon(Icons.delete_forever),
      ),
      value: isChecked,
      onChanged: (newValue) {
        //todo_bloc add as completed
        BlocProvider.of<TodosBloc>(context).add(
          DoneTodoEvent(index: itemAt),
        );
      },
    );
  }
}
