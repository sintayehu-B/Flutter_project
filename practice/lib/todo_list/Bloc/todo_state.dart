import 'package:practice/todo_list/models/todo.dart';

abstract class TodoState {}

class TodosLoading extends TodoState {}

class TodosLoaded extends TodoState {
  final List<Todo> todos;
  TodosLoaded(this.todos);
}

class TodosOperationFailed extends TodoState {}