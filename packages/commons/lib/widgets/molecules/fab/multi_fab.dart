// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import '../../../style/color_theme.dart';

// class MultiFab extends StatelessWidget {
//   final bool isVisible;
//   final List<SpeedDialChild>? speedDialChildren;

//   const MultiFab(
//       {super.key, this.isVisible = true, required this.speedDialChildren});

//   @override
//   Widget build(BuildContext context) {
//     ValueNotifier<bool> isDialOpen = ValueNotifier(true);
//     return SpeedDial(
//       visible: isVisible,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       icon: Icons.add,
//       animatedIcon: AnimatedIcons.menu_close,
//       openCloseDial: isDialOpen,
//       backgroundColor: ColorsTheme.primaryCoast,
//       activeBackgroundColor: ColorsTheme.backgroundCloud,
//       foregroundColor: ColorsTheme.textColor,
//       overlayColor: ColorsShadesTheme.paragraphBaseline,
//       overlayOpacity: 0.5,
//       spacing: 8,
//       spaceBetweenChildren: 12,
//       closeManually: false,
//       children: speedDialChildren ?? [],
//     );
//   }
// }
