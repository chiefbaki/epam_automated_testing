import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/resources/resources.dart';


class ScanBtn extends StatelessWidget {
  final Function() onPressed;
  const ScanBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Image.asset(Images.scan));
  }
}
