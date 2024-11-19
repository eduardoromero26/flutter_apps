import 'package:flutter/material.dart';

import '../../../style/color_theme.dart';
import '../../../style/font_styles.dart';

AppBar customAppBar(
    {double elevation = 0.0,
    String title = '',
    required BuildContext context,
    Widget? leading,
    List<Widget>? actions = const [],
    TextStyle textStyle = TypographyTheme.fontH3White,
    Color backgroundColor = ColorsTheme.primaryCoast,
    bool automaticallyImplyLeading = true,
    bool centerTitle = false,
    bottom}) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: elevation,
    actions: actions,
    automaticallyImplyLeading: automaticallyImplyLeading,
    centerTitle: centerTitle,
    title: Row(
      children: [
        if (leading != null)
          leading,
        const SizedBox(
            width: 4), 
        Expanded(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ],
    ),
    iconTheme: const IconThemeData(color: ColorsTheme.textColor),
    bottom: bottom,
  );
}
