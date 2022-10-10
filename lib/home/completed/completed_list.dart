import 'package:flutter/material.dart';
import 'package:repaso_todos_theme/home/completed/item_completed.dart';

class CompletedList extends StatelessWidget {
  final List<dynamic> listContent;
  CompletedList({
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
        return ItemCompleted(todoDescription: listContent[index]);
      },
    );
  }
}
