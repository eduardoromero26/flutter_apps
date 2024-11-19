import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';

class TextAndIconButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;

  const TextAndIconButton(
      {super.key, required this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Row(
        children: [
          Text(
            text,
            style: TypographyTheme.fontBody1,
          ),
          const SizedBox(width: 8),
          Icon(
            icon,
            color: ColorsTheme.textColor,
          ),
        ],
      ),
    );
  }
}
