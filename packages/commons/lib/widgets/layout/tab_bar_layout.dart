import 'package:commons/widgets/atoms/button/expanded_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';
import '../molecules/app_bar/custom_app_bar_widget.dart';

class TabBarLayout extends StatelessWidget {
  final Widget child;
  final String title;
  final List<Widget> actions;
  final List<Widget> tabs;
  final bool showNotificationAndMail;
  final bool showBottomSheet;
  final IconData iconBottomSheet;
  final String textBottomSheet;
  final Function? onPressedBottomSheet;
  final ValueListenable<bool> loadingBottomSheet;

  const TabBarLayout(
      {required Key key,
      required this.child,
      required this.title,
      this.actions = const [],
      required this.tabs,
      this.showNotificationAndMail = false,
      this.showBottomSheet = false,
      this.iconBottomSheet = Icons.person_add,
      this.textBottomSheet = '',
      this.onPressedBottomSheet,
      required this.loadingBottomSheet,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsTheme.white,
        appBar: customAppBar(
          context: context,
          title: title,
          // actions: showNotificationAndMail
          //     ? [
          //         Badge(
          //           label: const Text(
          //             '3',
          //           ),
          //           child: IconButton(
          //             icon: const Icon(Icons.notifications),
          //             onPressed: () {},
          //           ),
          //         ),
          //         const SizedBox(width: 10),
          //         Badge(
          //           label: const Text(
          //             '1',
          //           ),
          //           child: IconButton(
          //               icon: const Icon(Icons.email), onPressed: () {}),
          //         ),
          //         const SizedBox(width: 10)
          //       ]
          //     : actions,
          bottom: TabBar(
              labelColor: ColorsTheme.textColor,
              labelStyle: TypographyTheme.fontH5,
              indicatorColor: ColorsTheme.textColor,
              indicatorWeight: 4,
              unselectedLabelColor: ColorsTheme.textColor,
              tabs: tabs),
        ),
        body: child,
        // floatingActionButton: FloatingActionButton(onPressed: () {}),
        bottomSheet: showBottomSheet
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: ExpandedButton(
                  icon: iconBottomSheet,
                  iconColor: ColorsTheme.white,
                  textStyle: const TextStyle(
                    color: ColorsTheme.white,
                  ),
                  onPressed: () {
                    onPressedBottomSheet!();
                  },
                  text: textBottomSheet,
                  isLoading: loadingBottomSheet,
                ),
              )
            : null);
  }
}
