import 'dart:ffi';

import 'package:isar/isar.dart';
import 'package:mtodo/constants/isar.dart';
import 'package:mtodo/features/todo/domain/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

// CREATE
@riverpod
Future<void> createTodo(CreateTodoRef ref, String details) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  await isar.writeTxn(() async {
    await isar.todos.put(Todo(details: details));
  });
}

// UPDATE
@riverpod
Future<void> updateTodo(UpdateTodoRef ref, Id id, String newDetail) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  Todo? todo = await isar.todos.where().idEqualTo(id).findFirst();

  await isar.writeTxn(() async {
    if (todo != null) {
      todo.details = newDetail;
      isar.todos.put(todo);
    } else {
      isar.todos.put(Todo(details: newDetail));
    }
  });
}

// TOGGLE
@riverpod
Future<void> toggleTodo(ToggleTodoRef ref, Id id) async {
  final isar = await ref.watch(getDatabaseProvider.future);
  Todo? todo = await isar.todos.where().idEqualTo(id).findFirst();

  if (todo != null) {
    await isar.writeTxn(() async {
      todo.done = !todo.done;
      isar.todos.put(todo);
    });
  }
}

// TOGGLE
@riverpod
Future<void> deleteTodo(DeleteTodoRef ref, Id id) async {
  final isar = await ref.watch(getDatabaseProvider.future);

  await isar.writeTxn(() async {
    isar.todos.delete(id);
  });
}
