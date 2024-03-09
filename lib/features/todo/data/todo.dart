import 'package:isar/isar.dart';
import 'package:mtodo/constants/isar.dart';
import 'package:mtodo/features/todo/domain/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

// GET ALL
@riverpod
Future<List<Todo>> getAllTodos(GetAllTodosRef ref) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  List<Todo> todos = await isar.todos.where(sort: Sort.asc).findAll();

  todos.sort((a, b) {
    if (a.done == b.done) {
      return a.id.compareTo(b.id);
    } else {
      return a.done ? 1 : -1;
    }
  });

  return todos;
}

// READ
@riverpod
Future<Todo?> readTodo(ReadTodoRef ref, Id id) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  Todo? todo = await isar.todos.where().idEqualTo(id).findFirst();

  return todo;
}
