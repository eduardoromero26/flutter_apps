import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? bgColor;
  final int? elevation;
  final String text;
  final TextStyle? textStyle;
  final Color? borderColor;
  final IconData? icon;
  final Color? iconColor;
  final ValueListenable<bool>? isLoading;
  final bool isSecondary;

  const ExpandedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.bgColor,
    this.elevation,
    this.textStyle,
    this.borderColor,
    this.icon,
    this.iconColor,
    this.isLoading,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    Color bgNormal = bgColor ?? ColorsTheme.accentForest;
    Color bgSecondary = bgColor ?? ColorsTheme.primaryCoast;
    Color borderNormal = borderColor ?? ColorsTheme.accentForest;
    Color bgDisabled = ColorsShadesTheme.disabledGray1;
    TextStyle textStyleNormal = textStyle ?? TypographyTheme.fontBtnWhite;
    TextStyle textStyleSecondary =
        textStyle ?? TypographyTheme.fontBtnprimaryCoast;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStateProperty.resolveWith<double>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) return 0.0;
              return (elevation ?? 4).toDouble();
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) return bgDisabled;
              return isSecondary ? bgSecondary : bgNormal;
            },
          ),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: onPressed == null ? bgDisabled : borderNormal,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: ValueListenableBuilder<bool>(
          valueListenable: isLoading ?? ValueNotifier(false),
          builder: (context, isLoading, child) {
            if (isLoading) {
              return const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: ColorsTheme.white,
                  strokeWidth: 3,
                ),
              );
            } else {
              return icon == null
                  ? Text(
                      text,
                      style: onPressed == null
                          ? TypographyTheme.fontBtnDisabled
                          : (isSecondary
                              ? textStyleSecondary
                              : textStyleNormal),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text,
                            style: textStyle ??
                                TypographyTheme.fontBtnprimaryCoast),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(icon, color: iconColor),
                      ],
                    );
            }
          },
        ),
      ),
    );
  }
}
