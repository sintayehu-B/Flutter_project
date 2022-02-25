
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/todo_list/Bloc/todo_event.dart';
import 'package:practice/todo_list/Bloc/todo_state.dart';
import 'package:practice/todo_list/repository/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository todoRepository;

  TodoBloc(this.todoRepository) : super(TodosLoading());

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is LoadAllTodos) {
      // loading code
      yield TodosLoading();
      final todos = await todoRepository.getAllTodos();
      yield TodosLoaded(todos);
    }

    if (event is AddTodo) {
      final todo = event.todo;
      await todoRepository.addTodo(todo);
      final newtodos = await todoRepository.getAllTodos();
      yield TodosLoaded(newtodos);
    }
  }
}