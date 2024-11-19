// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:comunapp/generated/l10n.dart';
// import 'package:comunapp/providers/auth_provider.dart';
// import 'package:comunapp/utils/routes/route_screens.dart';
// import 'package:comunapp/widgets/atoms/icon/icon_w_title.dart';

// class GuardMenu extends StatelessWidget {
//   const GuardMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     return Card(
//       elevation: 2,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 12.0),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               IconButtonWTitle(
//                   icon: Icons.qr_code_scanner_outlined,
//                   title: S.of(context).qrCodeScanner,
//                   onPressed: () =>
//                       Navigator.pushNamed(context, RouteScreens.qrCodeScanner)),
//               IconButtonWTitle(
//                   icon: Icons.person_2_outlined,
//                   title: S.of(context).visits,
//                   onPressed: () => Navigator.pushNamed(
//                       context, RouteScreens.guestOverviewGuard)),
//               IconButtonWTitle(
//                   icon: Icons.inventory_2_outlined,
//                   title: S.of(context).deliveries,
//                   onPressed: () => Navigator.pushNamed(
//                       context, RouteScreens.packagesOverviewGuard)),
//               IconButtonWTitle(
//                   icon: Icons.logout_outlined,
//                   title: S.of(context).logout,
//                   onPressed: () => authProvider.logout(context)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
