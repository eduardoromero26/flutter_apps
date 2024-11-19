import 'package:commons/widgets/atoms/image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:commons/style/font_styles.dart';

class NewsCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const NewsCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            CustomCachedNetworkImage(
              imageUrl: imageUrl,
              color: null,
              imageHeight: 160,
              imageWidth: 200,
              fit: BoxFit.cover,
              borderRadius: 20.0,
            ),
            SizedBox(
              width: 200,
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: ListTile(
                    title: Text(
                      title,
                      style: TypographyTheme.fontH4
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      description,
                      style: TypographyTheme.fontBody2
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    contentPadding: const EdgeInsets.all(
                      12.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            )
          ],
        ),
      ),
    );
  }
}
