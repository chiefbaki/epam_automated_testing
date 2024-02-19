import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/scan_btn.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  const SearchTextField({
    super.key,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 42,
      child: TextField(
        controller: controller,
        style: AppFonts.s12w400,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(5),
            hintText: "Search...",
            prefixIcon: Image.asset(Images.search),
            suffixIcon: ScanBtn(
              onPressed: () {},
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColors.stroke),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: AppColors.stroke),
            )),
      ),
    );
  }
}
