import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/shopping/presentation/provider/favourite_provider.dart';
import 'package:travel_app/features/widgets/favourite_btn.dart';

class CategoryItem extends StatefulWidget {
  final String name;
  final String model;
  final String price;
  final String img;
  const CategoryItem({
    super.key,
    required this.name,
    required this.model,
    required this.price,
    required this.img,
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<FavouriteProvider>(context);
    return Container(
      width: 160,
      height: MediaQuery.of(context).size.height * 0.188,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
        child: Column(
          children: [
            Image.asset(
              widget.img,
              width: 93,
              height: 71,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      widget.name,
                      style: AppFonts.s8w600,
                    ),
                    Text(
                      widget.model,
                      style: AppFonts.s6w300,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "\u0024${widget.price}",
                      style: AppFonts.s7w500,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 25,
                        height: 13,
                        decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: Text(
                          "Buy",
                          style:
                              AppFonts.s6w600.copyWith(color: AppColors.white),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Learn more >",
                      style: AppFonts.s6w300.copyWith(color: AppColors.blue),
                    ),
                  ],
                ),
                const FavouriteBtn()
              ],
            )
          ],
        ),
      ),
    );
  }
}
