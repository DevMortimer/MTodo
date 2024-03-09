import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtodo/common_widgets/appbar.dart';
import 'package:mtodo/constants/isar.dart';
import 'package:mtodo/features/todo/todo.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TodoPage extends ConsumerWidget {
  TodoPage({super.key});

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final database = ref.watch(getDatabaseProvider);

    int maxLength = 25;
    textEditingController.addListener(() {
      if (textEditingController.text.length > maxLength) {
        textEditingController.text = textEditingController.text.substring(
          0,
          maxLength,
        );
      }
    });

    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // List of Todos
            database.when(
              error: (error, stacktrace) =>
                  Center(child: Text("ERROR: $error.")),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (data) {
                return Consumer(builder: (context, ref, child) {
                  final fetchAll = ref.watch(getAllTodosProvider);

                  return fetchAll.when(
                    error: (error, stacktrace) =>
                        Center(child: Text("ERROR: $error.")),
                    loading: () => Skeletonizer(
                      enabled: true,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const Card();
                        },
                      ),
                    ),
                    data: (data) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Column(
                              children: [
                                Card(
                                  child: ListTile(
                                    title: Text(data[index].details),
                                    leading: IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () async {
                                        await ref.read(
                                          deleteTodoProvider(data[index].id)
                                              .future,
                                        );
                                        ref.invalidate(getAllTodosProvider);
                                      },
                                    ),
                                  ),
                                ),
                                index != data.length - 1
                                    ? const Divider()
                                    : Container(),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                });
              },
            ),

            // Add ToDo
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  TextField(
                    controller: textEditingController,
                    onSubmitted: (_) async {
                      await addTask(ref);
                    },
                  ),
                  SizedBox(height: 2.h),
                  ElevatedButton(
                    child: Row(
                      children: [
                        const Icon(Icons.add_task),
                        SizedBox(width: 2.w),
                        const Text("Add Task"),
                      ],
                    ),
                    onPressed: () async {
                      await addTask(ref);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addTask(WidgetRef ref) async {
    await ref.read(
      createTodoProvider(textEditingController.text).future,
    );
    ref.invalidate(getAllTodosProvider);
    textEditingController.clear();
  }
}
