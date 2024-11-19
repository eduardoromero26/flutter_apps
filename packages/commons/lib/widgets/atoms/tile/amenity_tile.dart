// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:comunapp/generated/l10n.dart';
// import 'package:comunapp/models/booking_model.dart';
// import 'package:commons/style/font_styles.dart';

// class AmenityTileBuilder extends StatelessWidget {
//   final Future<List<dynamic>>? customFuture;
//   Icon customIcon = const Icon(Icons.person);

//   AmenityTileBuilder({
//     super.key,
//     required this.customFuture,
//     required this.customIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List>(
//       future: customFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.error != null) {
//           return Center(child: Text(S.of(context).errorOccurred));
//         } else {
//           return (snapshot.data!.isNotEmpty)
//               ? ListView.builder(
//                   addAutomaticKeepAlives: true,
//                   shrinkWrap: true,
//                   itemCount: snapshot.data?.length,
//                   itemBuilder: (ctx, i) {
//                     BookingModel bookingModel = snapshot.data![i];
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         color: Colors.grey[200],
//                         child: ListTile(
//                           leading: customIcon,
//                           title: Text(
//                             '${bookingModel.amenity} | ${_formatDateTime(bookingModel.startDate.toDate())} ',
//                             style: TypographyTheme.fontBody1,
//                           ),
//                           subtitle: Text(
//                             bookingModel.hour,
//                             style: TypographyTheme.fontBody1,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 )
//               : const Padding(
//                   padding: EdgeInsets.all(20.0),
//                   child: Text(
//                     'Sin Registros',
//                     style: TypographyTheme.fontBody1,
//                   ),
//                 );
//         }
//       },
//     );
//   }

//   String _formatDateTime(DateTime dateTime) {
//     return DateFormat('EEEE, d MMMM', 'es_ES').format(dateTime);
//   }
// }
