// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import '../../../style/font_styles.dart';

// class CustomAutoSuggestTextFormField extends StatefulWidget {
//   final String? hintText;
//   final String? labelText;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final Function? onTap;
//   final suggestionCallback;
//   final onSuggestionSelected;
//   final itemBuilder;
//   final TextEditingController? controller;
//   final bool? readOnly;
//   final TextInputType? keyboardType;
//   final int? maxLines;
//   final int? minLines;
//   final double? verticalPadding;
//   final String? Function(String?)? validator;
//   final RegExp? allowedValues;
//   final bool? enabled;
//   final List<TextInputFormatter>? inputFormatters;
//   final FocusNode? myFocusNode;
//   final Function? onChanged;
//   final bool obscureText;

//   const CustomAutoSuggestTextFormField({
//     super.key,
//     this.hintText,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.onTap,
//     this.controller,
//     this.readOnly,
//     this.keyboardType,
//     this.suggestionCallback,
//     this.onSuggestionSelected,
//     this.itemBuilder,
//     this.maxLines,
//     this.minLines,
//     this.verticalPadding,
//     this.validator,
//     this.enabled,
//     this.allowedValues,
//     this.labelText,
//     this.inputFormatters,
//     this.myFocusNode,
//     this.onChanged,
//     this.obscureText = false,
//   });

//   @override
//   _CustomAutoSuggestTextFormFieldState createState() =>
//       _CustomAutoSuggestTextFormFieldState();
// }

// class _CustomAutoSuggestTextFormFieldState
//     extends State<CustomAutoSuggestTextFormField> {
//   String _lastSuggestionPattern = '';

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//       alignment: Alignment.center,
//       child: TypeAheadFormField(
//         textFieldConfiguration: TextFieldConfiguration(
//           controller: widget.controller,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//                 horizontal: 16, vertical: widget.verticalPadding ?? 0),
//             enabledBorder: grayBorder(),
//             focusedBorder: primaryCoastBorder(),
//             errorBorder: redBorder(),
//             focusedErrorBorder: primaryCoastBorder(),
//             disabledBorder: grayBorder(),
//             labelText: widget.labelText ?? '',
//             labelStyle: TypographyTheme.fontBody1Placeholder,
//             alignLabelWithHint: true,
//             hintText: widget.hintText,
//             prefixIcon: widget.prefixIcon,
//             suffixIcon: widget.suffixIcon,
//           ),
//         ),
//         suggestionsCallback: (pattern) async {
//           if (pattern != _lastSuggestionPattern) {
//             _lastSuggestionPattern = pattern;
//             return widget.suggestionCallback(pattern);
//           } else {
//             return [];
//           }
//         },
//         itemBuilder: (context, suggestion) {
//           if (widget.itemBuilder != null) {
//             return widget.itemBuilder!(context, suggestion);
//           }
//           return ListTile(
//             title: Text(suggestion as String),
//           );
//         },
//         onSuggestionSelected: (suggestion) {
//           if (widget.onSuggestionSelected != null) {
//             widget.onSuggestionSelected!(suggestion);
//           } else {
//             widget.controller?.text = suggestion as String;
//           }
//         },
//         validator: (value) {
//           return widget.validator != null ? widget.validator!(value) : null;
//         },
//         loadingBuilder: (context) => const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             'Loading...',
//             style: TypographyTheme.fontBody1,
//           ),
//         ),
//         noItemsFoundBuilder: (context) => const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             'Loading...',
//             style: TypographyTheme.fontBody1,
//           ),
//         ),
//       ),
//     );
//   }

//   OutlineInputBorder redBorder() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(width: 1, color: Colors.red),
//       borderRadius: BorderRadius.circular(10.0),
//     );
//   }

//   OutlineInputBorder primaryCoastBorder() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(width: 1, color: Colors.blue),
//       borderRadius: BorderRadius.circular(10.0),
//     );
//   }

//   OutlineInputBorder grayBorder() {
//     return OutlineInputBorder(
//       borderSide: const BorderSide(width: 1, color: Colors.grey),
//       borderRadius: BorderRadius.circular(10.0),
//     );
//   }
// }
