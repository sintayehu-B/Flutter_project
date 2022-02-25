import 'package:practice/todo_list/data_provider/todo_provider.dart';
import 'package:practice/todo_list/models/todo.dart';

class TodoDbProvider extends TodoProvider {
  final List<Todo> _todos = [];

  Future<void> addTodo(Todo todo) async {
    _todos.add(todo);
  }

  Future<List<Todo>> getTodos() async {
    return _todos;
  }

  void updateTodo(Todo todo) async {}
}