// import 'package:commons/widgets/atoms/icon/icon_w_title.dart';
// import 'package:flutter/material.dart';

// class AdminMenu extends StatelessWidget {
//   const AdminMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
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
//                   icon: Icons.person_2_outlined,
//                   title: S.of(context).visits,
//                   onPressed: () =>
//                      null),
//               IconButtonWTitle(
//                   icon: Icons.inventory_2_outlined,
//                   title: S.of(context).deliveries,
//                   onPressed: () => Navigator.pushNamed(
//                       context, RouteScreens.packagesOverview)),
//               IconButtonWTitle(
//                   icon: Icons.pool_outlined,
//                   title: S.of(context).amenities,
//                   onPressed: () => Navigator.pushNamed(
//                       context, RouteScreens.amenitiesScreen)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
