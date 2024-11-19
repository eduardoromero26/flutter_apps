import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final Color? color;
  final double? borderRadius;
  final double? imageHeight;
  final double? imageWidth;
  final BoxFit? fit;

  const CustomCachedNetworkImage(
      {Key? key,
      required this.imageUrl,
      this.color,
      this.borderRadius,
      this.imageWidth,
      this.imageHeight,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius != null
          ? BorderRadius.only(
              topLeft: Radius.circular(borderRadius!),
              topRight: Radius.circular(borderRadius!))
          : BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: imageHeight,
        width: imageWidth,
        fit: fit,
        color: color,
        placeholder: (context, url) => const Center(
          child: SizedBox(
            width: 30.0,
            height: 30.0,
            child: CircularProgressIndicator(
              color: ColorsTheme.textColor,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
