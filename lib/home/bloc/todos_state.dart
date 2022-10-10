part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class TodosInitial extends TodosState {}

class TodoAddedState extends TodosState {
  final String msg = "Se agregó un nuevo TODO...";
}

class TodoRemoved extends TodosState {
  final String msg = "Se eliminó un TODO de la lista...";
}

class TodoCompleted extends TodosState {
  final String msg = "Completaste un TODO de la lista...";
}
