import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../style/color_theme.dart';
import '../../../style/font_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onTap;
  final TextEditingController? controller;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final double? verticalPadding;
  final String? Function(String?)? validator;
  final RegExp? allowedValues;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? myFocusNode;
  final Function? onChanged;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.controller,
    this.readOnly,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.verticalPadding,
    this.validator,
    this.enabled,
    this.allowedValues,
    this.labelText,
    this.inputFormatters,
    this.myFocusNode,
    this.onChanged,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      child: TextFormField(
        onTap: onTap != null
            ? () async {
                await onTap!();
              }
            : () {},
        controller: controller,
        obscureText: obscureText,
        onChanged: (value) {
          if (onChanged != null) {
            onChanged!(value);
          }
        },
        validator: (value) {
          return validator != null ? validator!(value) : null;
        },
        focusNode: myFocusNode,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        enabled: enabled ?? true,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        // inputFormatters: inputFormatters ??
        //     <TextInputFormatter>[
        //       FilteringTextInputFormatter.allow(Constants.SEARCH_STRING_EXP),
        //     ],
        maxLines: maxLines ?? 1,
        style: TypographyTheme.fontBody1,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16, vertical: verticalPadding ?? 0),
          enabledBorder: grayBorder(),
          focusedBorder: primaryCoastBorder(),
          errorBorder: redBorder(),
          focusedErrorBorder: primaryCoastBorder(),
          disabledBorder: grayBorder(),
          labelText: labelText ?? '',
          labelStyle: TypographyTheme.fontBody1Placeholder,
          alignLabelWithHint: true,
          floatingLabelStyle: TypographyTheme.fontBody1accentForest,
          hintText: hintText,
          hintStyle: TypographyTheme.fontBody1Placeholder,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

  OutlineInputBorder redBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: ColorsTheme.destructiveRed),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  OutlineInputBorder primaryCoastBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: ColorsTheme.primaryCoast),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  OutlineInputBorder grayBorder() {
    return OutlineInputBorder(
      borderSide:
          const BorderSide(width: 1, color: ColorsShadesTheme.neutralGray2),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
