import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';
import '../molecules/app_bar/custom_app_bar_widget.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String? title;
  final Widget? leading;
  final Widget? fab;
  final List<Widget>? actions;
  final bool? automaticallyImplyLeading;

  const MainLayout(
      {super.key,
      required this.child,
      required this.title,
      this.actions,
      this.leading,
      this.fab,
      this.automaticallyImplyLeading = true,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsTheme.white,
        appBar: customAppBar(
            context: context,
            leading: leading,
            title: title ?? '',
            automaticallyImplyLeading: automaticallyImplyLeading ?? true,
            actions: actions ?? []),
        body: SingleChildScrollView(child: child),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        );
  }
}
