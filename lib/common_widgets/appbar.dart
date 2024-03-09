import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

class MAppBar extends AppBar {
  MAppBar(this.context, {super.key})
      : super(
          title: const Text("MTodo"),
          actions: [
            // Theme button
            IconButton(
              icon: Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.sunny),
              onPressed: () {
                EasyDynamicTheme.of(context).changeTheme(
                  dark: Theme.of(context).colorScheme.brightness !=
                      Brightness.dark,
                );
              },
            ),
          ],
        );

  BuildContext context;
}
