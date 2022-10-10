import 'package:flutter/material.dart';

class CreateTodoForm extends StatelessWidget {
  var _textCtrll = TextEditingController();
  CreateTodoForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  controller: _textCtrll,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("TO-DO"),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // todo_bloc guardar
            },
            child: Text("Guardar"),
          ),
          TextButton(
            onPressed: () {
              _textCtrll.clear();
            },
            child: Text("Borrar"),
          ),
        ],
      ),
    );
  }
}