import 'package:flutter/material.dart';
import '../../../style/color_theme.dart';
import '../../../style/font_styles.dart';

class CustomDropdownButtonFormField<T> extends StatefulWidget {
  final List<T> items;
  final ValueChanged<T>? onChanged;
  final T? value;
  final String? labelText;
  final String? hintText;

  const CustomDropdownButtonFormField({
    required this.items,
    this.onChanged,
    this.value,
    this.labelText,
    this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  _CustomDropdownButtonFormFieldState<T> createState() =>
      _CustomDropdownButtonFormFieldState<T>();
}

class _CustomDropdownButtonFormFieldState<T>
    extends State<CustomDropdownButtonFormField<T>> {
  late T selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.value as T;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.items.map((T item) {
                    return RadioListTile<T>(
                      value: item,
                      groupValue: selectedItem,
                      title: Text(item.toString().split('.').last),
                      onChanged: (T? newValue) {
                        setState(() {
                          selectedItem = newValue as T;
                        });
                        Navigator.pop(context);
                        widget.onChanged?.call(newValue as T);
                      },
                      activeColor: ColorsTheme.primaryCoast,
                    );
                  }).toList(),
                ),
              );
            },
          );
        },
        child: InputDecorator(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            enabledBorder: grayBorder(),
            focusedBorder: primaryCoastBorder(),
            errorBorder: redBorder(),
            focusedErrorBorder: primaryCoastBorder(),
            disabledBorder: grayBorder(),
            labelText: widget.labelText ?? '',
            labelStyle: TypographyTheme.fontBody1Placeholder,
            alignLabelWithHint: true,
            floatingLabelStyle: TypographyTheme.fontBody1accentForest,
            hintText: widget.hintText,
            hintStyle: TypographyTheme.fontBody1Placeholder,
          ),
          child: Text(
            // if value is null, show hintText, otherwise split to show only the last part
            widget.value == null
                ? widget.hintText ?? ''
                : widget.value.toString().split('.').last,
            style: TypographyTheme.fontBody1,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder redBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: ColorsTheme.destructiveRed),
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  OutlineInputBorder primaryCoastBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: ColorsTheme.primaryCoast),
      borderRadius: BorderRadius.circular(20.0),
    );
  }

  OutlineInputBorder grayBorder() {
    return OutlineInputBorder(
      borderSide:
          const BorderSide(width: 1, color: ColorsShadesTheme.neutralGray2),
      borderRadius: BorderRadius.circular(20.0),
    );
  }
}
