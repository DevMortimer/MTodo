import 'package:isar/isar.dart';

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
