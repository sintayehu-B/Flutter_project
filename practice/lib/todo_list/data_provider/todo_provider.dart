import 'package:practice/todo_list/models/todo.dart';

abstract class TodoProvider {
  Future<void> addTodo(Todo todo);

  Future<List<Todo>> getTodos();

  void updateTodo(Todo todo) async {}
}