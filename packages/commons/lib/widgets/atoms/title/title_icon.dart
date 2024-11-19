import 'package:flutter/material.dart';
import 'package:commons/style/font_styles.dart';

class TitleIcon extends StatelessWidget {
  final IconData? icon;
  final String title;

  const TitleIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 20, bottom: 8),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            title,
            style: TypographyTheme.fontH2,
          ),
        ],
      ),
    );
  }
}
