import 'package:flutter/material.dart';

class ItemCompleted extends StatelessWidget {
  final String todoDescription;
  final bool isChecked;
  ItemCompleted({
    Key? key,
    required this.todoDescription,
    this.isChecked = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        todoDescription,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              decoration: TextDecoration.lineThrough,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
      ),
      value: isChecked,
      onChanged: (newValue) {
        //todo_bloc add as todo
      },
    );
  }
}
