import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mtodo/features/todo/domain/todo.dart';

part 'isar.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> getDatabase(GetDatabaseRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [TodoSchema],
    directory: dir.path,
  );

  return isar;
}
