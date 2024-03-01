import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/shopping/presentation/provider/favourite_provider.dart';

class ItemCard extends StatefulWidget {
  final String img;
  final String name;
  const ItemCard({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<FavouriteProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 155,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 53,
                height: 17,
                decoration: BoxDecoration(
                    color: AppColors.itemNameColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  widget.name,
                  style: AppFonts.s6w600,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  vm.changeVisibility();
                  setState(() {});
                  print(vm.isVisibleOne);
                  print(vm.isVisibleTwo);
                  print(vm.isVisibleOne.runtimeType);
                  print("work");
                },
                child: Image.asset(
                  widget.img,
                  width: 133,
                  height: 71,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
