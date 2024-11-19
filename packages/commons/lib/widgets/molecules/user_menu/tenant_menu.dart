// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:comunapp/generated/l10n.dart';
// import 'package:comunapp/providers/auth_provider.dart';
// import 'package:comunapp/utils/routes/route_screens.dart';
// import 'package:comunapp/widgets/atoms/icon/icon_w_title.dart';

// class TetantMenu extends StatelessWidget {
//   const TetantMenu({super.key});

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
//                   icon: Icons.group_outlined,
//                   title: S.of(context).visits,
//                   onPressed: () =>
//                       Navigator.pushNamed(context, RouteScreens.guestOverview)),
//               IconButtonWTitle(
//                   icon: Icons.inventory_2_outlined,
//                   title: S.of(context).deliveries,
//                   onPressed: () => Navigator.pushNamed(
//                       context, RouteScreens.packagesOverview)),
//               IconButtonWTitle(
//                   icon: Icons.logout_outlined,
//                   title: S.of(context).logout,
//                   onPressed: () => authProvider.logout(context)),
//               // IconButtonWTitle(
//               //     icon: Icons.pool_outlined,
//               //     title: S.of(context).amenities,
//               //     onPressed: () => Navigator.pushNamed(
//               //         context, RouteScreens.amenitiesScreen)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
