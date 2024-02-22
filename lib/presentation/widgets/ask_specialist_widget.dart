import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class AskSpecialistWidget extends StatelessWidget {
  const AskSpecialistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Images.avatar),
        const SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Need shopping help?",
              style: AppFonts.s12w700,
            ),
            Text(
              "Ask a Specialist",
              style: AppFonts.s12w700.copyWith(color: AppColors.blue),
            ),
          ],
        )
      ],
    );
  }
}
