import 'package:practice/todo_list/data_provider/todo_db_provider.dart';
import 'package:practice/todo_list/data_provider/todo_provider.dart';
import 'package:practice/todo_list/models/todo.dart';

class TodoRepository {
  final TodoProvider todoProvider;

  TodoRepository({required this.todoProvider});

  Future<void> addTodo(Todo todo) async {
    todo.description.replaceAll(RegExp(r'h'), "b");
    await todoProvider.addTodo(todo);
  }

  Future<List<Todo>> getAllTodos() async {
    return todoProvider.getTodos();
  }

  Future<List<Todo>> getTodosByPriority(int priority) async {
    final todos = await todoProvider.getTodos();
    return todos.where((todo) => todo.priority == priority).toList();
  }
}