part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends TodosEvent {
  final String todoDescription;

  AddTodoEvent({required this.todoDescription});
}

class DoneTodoEvent extends TodosEvent {
  final int index;

  DoneTodoEvent({required this.index});
}

class DeleteTodoEvent extends TodosEvent {
  final int index;

  DeleteTodoEvent({required this.index});
}
