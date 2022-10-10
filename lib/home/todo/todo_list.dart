import 'package:flutter/material.dart';
import 'package:repaso_todos_theme/home/todo/item_todo.dart';

class TodoList extends StatelessWidget {
  final List<dynamic> listContent;
  TodoList({
    Key? key,
    required this.listContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listContent.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      itemBuilder: (BuildContext context, int index) {
        return ItemTodo(todoDescription: listContent[index]);
      },
    );
  }
}
