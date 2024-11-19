import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:commons/style/font_styles.dart';

class LottieMessage extends StatelessWidget {
  final String? lottieUrl;
  final String? message;

  const LottieMessage({
    super.key,
    this.lottieUrl,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Center(
            child: Lottie.asset(
              lottieUrl ?? '',
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text(
              message ?? '',
              style: TypographyTheme.fontBody1,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
