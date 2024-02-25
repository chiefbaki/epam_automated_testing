import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final TextStyle textStyle;
  const CustomTextBtn(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
        ),
        child: Text(
          title,
          style: textStyle,
        ));
  }
}
