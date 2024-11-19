// import 'package:flutter/material.dart';

// class ShowDialogWidget extends StatelessWidget {
//   final dynamic objectModel;
//   final Function dialogFunction;
//   const ShowDialogWidget(
//       {super.key, required this.objectModel, required this.dialogFunction});

//   @override
//   Widget build(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Confirmar entrega'),
//             content: const Text(
//                 '¿Estás seguro de que quieres confirmar la entrega?'),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text('Cancelar'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                   child: const Text('Confirmar'),
//                   onPressed: () {
//                     dialogFunction(
//                       objectModel,
//                     );
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }
// }
