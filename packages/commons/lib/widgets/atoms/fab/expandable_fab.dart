import 'package:flutter/material.dart';

class ExpandableFab extends StatelessWidget {
  final double distance;
  final List<Widget> children;

  const ExpandableFab(
      {super.key, required this.distance, required this.children});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;

  const ActionButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: icon,
    );
  }
}
