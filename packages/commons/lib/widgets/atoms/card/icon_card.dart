import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

import '../../../style/font_styles.dart';

class IconCard extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final IconData icon;
  final Function()? onPressed;

  const IconCard(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.center,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: ColorsShadesTheme.neutralGray1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              onPressed!();
            },
            icon: Icon(icon),
            iconSize: 60,
          ),
          Text(
            text,
            style: TypographyTheme.fontBody1,
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
