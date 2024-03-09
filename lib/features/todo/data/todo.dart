import 'package:isar/isar.dart';
import 'package:mtodo/constants/isar.dart';
import 'package:mtodo/features/todo/domain/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

// GET ALL
@riverpod
Future<List<Todo>> getAllTodos(GetAllTodosRef ref) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  return isar.todos.where(sort: Sort.desc).findAll();
}

// READ
@riverpod
Future<Todo?> readTodo(ReadTodoRef ref, Id id) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  Todo? todo = await isar.todos.where().idEqualTo(id).findFirst();

  return todo;
}
