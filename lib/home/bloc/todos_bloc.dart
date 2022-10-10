import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosInitial()) {
    on<AddTodoEvent>(_addNewTodo);
    on<DoneTodoEvent>(_markAsDoneTodo);
    on<DeleteTodoEvent>(_deleteTodo);
  }

  void _addNewTodo(AddTodoEvent event, Emitter emit) {
    // TODO: implement event handler
  }
  void _markAsDoneTodo(DoneTodoEvent event, Emitter emit) {
    // TODO: implement event handler
  }
  void _deleteTodo(DeleteTodoEvent event, Emitter emit) {
    // TODO: implement event handler
  }
}
