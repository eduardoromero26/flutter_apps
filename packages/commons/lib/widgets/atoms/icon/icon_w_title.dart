import 'package:flutter/material.dart';

class IconButtonWTitle extends StatelessWidget {
  final IconData? icon;
  final String title;
  final Function onPressed;
  double? iconSize;

  IconButtonWTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    this.iconSize = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => onPressed(),
            icon: Icon(icon),
            iconSize: iconSize,
          ),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
