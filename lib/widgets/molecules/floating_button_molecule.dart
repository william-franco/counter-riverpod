// Flutter imports:
import 'package:flutter/material.dart';

class FloatingButtonMolecule extends StatelessWidget {
  final Widget child;
  // final void Function()? onPressed;
  final VoidCallback? onPressed;
  final String heroTag;

  const FloatingButtonMolecule({
    Key? key,
    required this.heroTag,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: onPressed,
      child: child,
    );
  }
}
