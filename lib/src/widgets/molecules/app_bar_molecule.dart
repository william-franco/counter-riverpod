// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

class AppBarMolecule extends StatelessWidget implements PreferredSizeWidget {
  final bool isBack;
  final Widget title;
  final List<Widget>? actions;

  const AppBarMolecule({
    super.key,
    required this.isBack,
    required this.title,
    this.actions,
  });

  static const double appBarHeight = 56.0;

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: isBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () => context.pop(),
            )
          : null,
      title: title,
      elevation: 0,
      toolbarHeight: appBarHeight,
      actions: actions,
    );
  }
}
