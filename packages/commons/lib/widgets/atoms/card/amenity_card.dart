import 'package:commons/widgets/atoms/image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';

class AmenityCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final bool isAvailable;

  const AmenityCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
    this.isAvailable = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isAvailable
            ? () {}
            : null;
      },
      child: Card(
        margin: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Stack(children: [
              CustomCachedNetworkImage(
                imageUrl: imageUrl,
                color: null,
                imageHeight: 160,
                imageWidth: 220,
                fit: BoxFit.cover,
                borderRadius: 20.0,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Chip(
                  elevation: 2,
                  backgroundColor: isAvailable
                      ? ColorsTheme.accentForest
                      : ColorsTheme.destructiveRed,
                  label: Text(
                    isAvailable ? 'Available' : 'Not Available',
                    style: TypographyTheme.fontBody1.copyWith(
                        fontWeight: FontWeight.bold, color: ColorsTheme.white),
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: 240,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ListTile(
                    title: Text(
                      title,
                      style: TypographyTheme.fontH3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(description,
                        style: TypographyTheme.fontBody1
                            .copyWith(fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0)
          ],
        ),
      ),
    );
  }
}
