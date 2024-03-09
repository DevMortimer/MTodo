import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtodo/common_widgets/appbar.dart';
import 'package:mtodo/constants/isar.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(getDatabaseProvider);

    return Scaffold(
      appBar: MAppBar(),
      body: database.when(
        error: (error, stacktrace) => Center(child: Text("ERROR: $error.")),
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (data) {
          return const Center(child: Text("Database loaded."));
        },
      ),
    );
  }
}
