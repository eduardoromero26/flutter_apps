import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';
import '../../../style/font_styles.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final Widget body;
  final Color? tileBackgroundColor;
  final EdgeInsetsGeometry? tilePadding;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.body,
    this.tileBackgroundColor,
    this.tilePadding,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: ColorsShadesTheme.neutralGray1,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 1,
          color: Colors.grey[200]!,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Theme(
        data: Theme.of(context).copyWith(
          cardColor: Colors.transparent,
          shadowColor: Colors.transparent,
          dividerColor: Colors.transparent,
          cardTheme: const CardTheme(
            elevation: 0, //
            color: Colors.transparent,
          ),
        ),
        child: ExpansionTile(
          tilePadding: widget.tilePadding,
          initiallyExpanded: _isExpanded,
          title: Text(
            widget.title,
            style: TypographyTheme.fontBody1,
          ),
          onExpansionChanged: (bool expanded) {
            setState(() {
              _isExpanded = expanded;
            });
          },
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
              child: widget.body,
            ),
          ],
        ),
      ),
    );
  }
}
