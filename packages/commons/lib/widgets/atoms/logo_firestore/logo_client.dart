// import 'package:flutter/material.dart';
// import 'package:commons/style/color_theme.dart';

// class LogoClient extends StatelessWidget {
//   final Color? color;
//   final double? imageWidth;
//   const LogoClient({
//     super.key,
//     this.color = ColorsTheme.white,
//     this.imageWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     FirestoreService firestoreService = FirestoreService();
//     UserModel? user = context.read<UserProvider>().user;
//     return FutureBuilder<String>(
//       future: firestoreService.getImageUrl('logo_clients/${user?.condoId}.png'),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: SizedBox(
//               height: 30.0,
//               width: 30.0,
//               child: CircularProgressIndicator(
//                 color: ColorsTheme.textColor,
//               ),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return const Icon(Icons.error);
//         } else {
//           String imageUrl = snapshot.data!;
//           return CustomCachedNetworkImage(
//             imageUrl: imageUrl,
//             color: color,
//             imageWidth: imageWidth,
//             fit: BoxFit.fitHeight,
//           );
//         }
//       },
//     );
//   }
// }
