import 'package:flutter/material.dart';

class ItemTodo extends StatelessWidget {
  final String todoDescription;
  final bool isChecked;
  ItemTodo({
    Key? key,
    required this.todoDescription,
    this.isChecked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todoDescription),
      secondary: IconButton(
        onPressed: () {
          // todo_bloc remove forever
        },
        icon: Icon(Icons.delete_forever),
      ),
      value: isChecked,
      onChanged: (newValue) {
        //todo_bloc add as completed
      },
    );
  }
}
