import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomTextButton(
      {super.key, required this.textButton,  this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(textButton, style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
