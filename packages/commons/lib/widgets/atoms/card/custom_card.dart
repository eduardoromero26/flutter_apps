import 'package:flutter/material.dart';
import 'package:commons/style/font_styles.dart';

class CustomCard extends StatelessWidget {
  final Future<List<dynamic>>? customFuture;
  final String title;
  final String? subtitle;
  final String? thirdTitle;
  final Icon? trailingIcon;
  final bool? isClickable;
  final Function? onTap;

  const CustomCard({
    super.key,
    required this.customFuture,
    this.trailingIcon,
    required this.title,
    this.subtitle,
    this.thirdTitle,
    this.isClickable,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListTile(
          enabled: isClickable ?? true,
          title: Text(
            title,
            style: TypographyTheme.fontH3.copyWith(),
          ),
          subtitle: subtitle != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle ?? '',
                      style: TypographyTheme.fontBody2,
                    ),
                    if (thirdTitle != null)
                      Text(
                        thirdTitle ?? '',
                        style: TypographyTheme.fontBody2,
                      ),
                  ],
                )
              : null,
          trailing: trailingIcon,

          onTap: () {
            if (onTap != null) {
              onTap!();
            }
          },
          // isClickable &&
          //         tileType == TileType.package
          //     ? showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return AlertDialog(
          //             title: Text(
          //                 alertDialogTitle),
          //             content: Text(
          //                 alertDialogMessage),
          //             actions: <Widget>[
          //               TextButton(
          //                 child:
          //                     const Text('Cancelar'),
          //                 onPressed: () {
          //                   Navigator.of(context)
          //                       .pop();
          //                 },
          //               ),
          //               TextButton(
          //                   child: const Text(
          //                       'Confirmar'),
          //                   onPressed: () {
          //                     trailingFunction(
          //                       objectModel,
          //                     );
          //                   }),
          //             ],
          //           );
          //         },
          //       )
          //     : isClickable &&
          //             tileType ==
          //                 TileType.guest
          //         ? trailingFunction(
          //             objectModel,
          //           )
          //         : null;
        ),
      ),
    );
  }
}
