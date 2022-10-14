import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  List<dynamic> _todosList = [];
  List<dynamic> _completedTodosList = [];
  List<dynamic> get getTodosList => _todosList;
  List<dynamic> get getCompletedTodosList => _completedTodosList;

  TodosBloc() : super(TodosInitial()) {
    on<AddTodoEvent>(_addNewTodo);
    on<DoneTodoEvent>(_markAsDoneTodo);
    on<DeleteTodoEvent>(_deleteTodo);
  }

  void _addNewTodo(AddTodoEvent event, Emitter emit) {
    _todosList.add(event.todoDescription);
    emit(TodoAddedState());
  }

  void _markAsDoneTodo(DoneTodoEvent event, Emitter emit) {
    _completedTodosList.add(_todosList[event.index]);
    _todosList.removeAt(event.index);
    emit(TodoCompleted());
  }

  void _deleteTodo(DeleteTodoEvent event, Emitter emit) {
    _todosList.removeAt(event.index);
    emit(TodoRemoved());
  }
}
