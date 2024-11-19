import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

class FilterFab extends StatelessWidget {
  final Function onPressed;
  final bool isVisible;
  const FilterFab({super.key, required this.onPressed, this.isVisible = true});

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? FloatingActionButton(
            backgroundColor: const Color.fromRGBO(137, 171, 173, 1),
            child: const Icon(
              Icons.filter_alt_outlined,
              color: ColorsTheme.textColor,
              size: 32,
            ),
            onPressed: () async {
              onPressed();
            },
          )
        : Container();
  }
}
