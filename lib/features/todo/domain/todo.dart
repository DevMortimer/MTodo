import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

@collection
class Todo {
  Todo({required this.details, this.done = false});

  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  String details;
  @Index(type: IndexType.value)
  bool done;
}

@Riverpod(keepAlive: true)
TextEditingController textEditingController(TextEditingControllerRef ref) =>
    TextEditingController();
