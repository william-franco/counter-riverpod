// Flutter imports:
import 'package:flutter/material.dart';

class FloatingButtonMolecule extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final String heroTag;

  const FloatingButtonMolecule({
    super.key,
    required this.child,
    this.onPressed,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: child,
    );
  }
}
