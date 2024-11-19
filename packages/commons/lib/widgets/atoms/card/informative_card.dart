import 'package:flutter/material.dart';

import '../../../style/font_styles.dart';

class InformativeCard extends StatelessWidget {
  final String text;
  final TextAlign textAlign;

  const InformativeCard(
      {super.key, required this.text, this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TypographyTheme.fontBody1,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
