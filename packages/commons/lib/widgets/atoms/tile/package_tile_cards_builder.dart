// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:comunapp/generated/l10n.dart';
// import 'package:comunapp/models/package_model.dart';
// import 'package:comunapp/models/user_model.dart';
// import 'package:comunapp/widgets/atoms/card/custom_card.dart';
// import 'package:comunapp/widgets/atoms/title/title_icon.dart';
// import 'package:comunapp/widgets/molecules/lottie/lottie_message.dart';

// class PackageTileCardsBuilder extends StatefulWidget {
//   final Future<List<dynamic>>? customFuture;
//   final Icon? trailingIcon;
//   final String? titleBuilder;
//   final IconData? titleIcon;
//   final bool? isClickable;
//   final Function? onTap;
//   final String? lottieUrl;
//   final String? lottieMessage;
//   final UserModel? user;

//   const PackageTileCardsBuilder({
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
//   State<PackageTileCardsBuilder> createState() =>
//       _PackageTileCardsBuilderState();
// }

// class _PackageTileCardsBuilderState extends State<PackageTileCardsBuilder> {
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
//                         itemCount: snapshot.data?.length,
//                         itemBuilder: (ctx, i) {
//                           PackageModel packageModel = snapshot.data![i];
//                           return Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 vertical: 2.0,
//                                 horizontal: 8.0,
//                               ),
//                               child: CustomCard(
//                                 title:
//                                     '${packageModel.deliveryCompany.toString().split(' ').map((str) => str[0].toUpperCase() + str.substring(1)).join(' ')}: ${packageModel.trackingNumber.toUpperCase()}',
//                                 subtitle: (packageModel.isDelivered)
//                                     ? 'Recibido: ${DateFormat('dd-MMM-yyyy, hh:mm a', 'es_ES').format(packageModel.deliveredDate!.toDate())}'
//                                     : 'Llega: ${DateFormat('dd-MMM-yyyy', 'es_ES').format(packageModel.expectedDeliveryDate.toDate())}',
//                                 thirdTitle: (packageModel.user?.uid !=
//                                         widget.user?.uid)
//                                     ? 'Recibe: ${packageModel.user?.displayName} - ${packageModel.isDelivered ? 'En caseta' : 'Pendiente'}'
//                                     : packageModel.isDelivered
//                                         ? 'En caseta'
//                                         : 'Pendiente',
//                                 trailingIcon: widget.trailingIcon,
//                                 onTap: () {
//                                   if (widget.onTap != null) {
//                                     widget.onTap!(packageModel);
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
