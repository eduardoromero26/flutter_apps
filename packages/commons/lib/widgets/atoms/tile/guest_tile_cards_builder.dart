// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:comunapp/generated/l10n.dart';
// import 'package:comunapp/models/guest_model.dart';
// import 'package:comunapp/models/user_model.dart';
// import 'package:comunapp/widgets/atoms/card/custom_card.dart';
// import 'package:comunapp/widgets/atoms/title/title_icon.dart';
// import 'package:comunapp/widgets/molecules/lottie/lottie_message.dart';

// class GuestTileCardsBuilder extends StatefulWidget {
//   final Future<List<dynamic>>? customFuture;
//   final Icon? trailingIcon;
//   final String? titleBuilder;
//   final IconData? titleIcon;
//   final bool? isClickable;
//   final Function? onTap;
//   final String? lottieUrl;
//   final String? lottieMessage;
//   final UserModel? user;

//   const GuestTileCardsBuilder({
//     super.key,
//     this.titleBuilder,
//     required this.customFuture,
//     this.trailingIcon,
//     this.titleIcon,
//     this.isClickable,
//     this.lottieUrl,
//     this.lottieMessage,
//     this.user,
//     this.onTap,
//   });

//   @override
//   State<GuestTileCardsBuilder> createState() => _GuestTileCardsBuilderState();
// }

// class _GuestTileCardsBuilderState extends State<GuestTileCardsBuilder> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (widget.titleBuilder != null)
//           TitleIcon(icon: widget.titleIcon, title: widget.titleBuilder ?? ''),
//         FutureBuilder<List>(
//           future: widget.customFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Expanded(
//                   child: Center(child: CircularProgressIndicator()));
//             } else if (snapshot.error != null) {
//               return Center(child: Text(S.of(context).errorOccurred));
//             } else {
//               return (snapshot.data!.isNotEmpty)
//                   ? Expanded(
//                       child: ListView.builder(
//                         addAutomaticKeepAlives: true,
//                         padding: const EdgeInsets.only(top: 8.0),
//                         itemCount: snapshot.data?.length,
//                         itemBuilder: (ctx, i) {
//                           Guest guest = snapshot.data![i];
//                           return Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 2.0,
//                                 horizontal: 8.0,
//                               ),
//                               child: CustomCard(
//                                 title:
//                                     (guest.name.isNotEmpty) ? guest.name : '',
//                                 subtitle: (guest.lastAccessedAt != null)
//                                     ? 'Registrado: ${DateFormat('dd-MMM-yyyy, hh:mm a', 'es_ES').format(guest.lastAccessedAt!)}'
//                                     : 'Programado: ${DateFormat('dd-MMM-yyyy', 'es_ES').format(guest.startDate!.toDate())}',
//                                 thirdTitle: (guest.user.uid != widget.user?.uid)
//                                     ? 'Visita a: ${guest.user.displayName}'
//                                     : null,
//                                 trailingIcon: widget.isClickable != false
//                                     ? widget.trailingIcon
//                                     : null,
//                                 onTap: () {
//                                   if (widget.onTap != null) {
//                                     widget.onTap!(guest);
//                                   }
//                                 },
//                                 isClickable: widget.isClickable,
//                                 customFuture: widget.customFuture,
//                               ));
//                         },
//                       ),
//                     )
//                   : LottieMessage(
//                       lottieUrl: widget.lottieUrl,
//                       message: widget.lottieMessage);
//             }
//           },
//         ),
//       ],
//     );
//   }
// }
