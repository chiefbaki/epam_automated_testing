import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/resources/resources.dart';



class BackBtn extends StatelessWidget {
  final Function() onPressed;
  const BackBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Image.asset(Images.back));
  }
}
