import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/resources/resources.dart';
import 'package:travel_app/features/shopping/data/headphones_model.dart';
import 'package:travel_app/features/shopping/presentation/provider/favourite_provider.dart';
import 'package:travel_app/features/widgets/category_item.dart';
import 'package:travel_app/features/widgets/custom_carousel.dart';
import 'package:travel_app/features/widgets/search_text_field.dart';
import 'package:travel_app/features/widgets/shop_carousel_first_item.dart';

@RoutePage()
class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  bool isVisible1 = true;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {

    const List<String> tempImgLst1 = [
      Images.item1,
      Images.item2,
      Images.item3,
      Images.item4,
      Images.item5,
      Images.item6
    ];

    const List<String> tempImgLst2 = [
      Images.item7,
      Images.item8,
      Images.item9,
      Images.item10,
      Images.item11,
    ];

    const List<String> tempNameLst2 = [
      "HomePod",
      "Accessories",
      "Apple Gift Card",
      "AirTag",
      "Apple TV 4K"
    ];

    const List<String> tempNameLst1 = [
      "AirPods",
      "Mac",
      "IPhone",
      "IPad",
      "Apple Watch",
      "Apple Vision Pro"
    ];

    const List<String> productType = [
      "AirPods\n2nd Generation",
      "AirPods\n3rd Generation",
      "AirPods Pro\n2nd Generation",
      "AirPods Max",
      "Compare",
      "Apple Music",
    ];

    const List<String> productImg = [
      Images.product1,
      Images.product2,
      Images.product3,
      Images.product4,
      Images.product5,
      Images.product6
    ];
    final vm = Provider.of<ShoppingProvider>(context);
    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchTextField(controller: TextEditingController(), hintText: "Search...",),
                const SizedBox(
                  height: 12,
                ),
                Visibility(
                  visible: vm.isVisibleOne,
                  child: const CustomCarousel(widgets: [
                    ShopCarouselFirst(
                      name: tempNameLst1,
                      img: tempImgLst1,
                    ),
                    ShopCarouselFirst(
                      name: tempNameLst2,
                      img: tempImgLst2,
                    )
                  ], width: 720),
                ),
                Visibility(
                  visible: vm.isVisibleTwo,
                  child: Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Which AirPods areright for you?",
                          style: AppFonts.s12w700,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: SizedBox(
                            width: 600,
                            height: 100,
                            child: ListView.separated(
                              itemCount: productType.length,
                              scrollDirection: Axis.horizontal,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Image.asset(
                                      productImg[index],
                                      width: 45,
                                      height: 45,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      productType[index],
                                      style: AppFonts.s7w500,
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 7.5,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Expanded(
                          child: GridView.builder(
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: HeadPhonesModel.models.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 12,
                                      mainAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                
                                return CategoryItem(
                                  id: HeadPhonesModel.models[index].id ?? "",
                                    img:
                                        HeadPhonesModel.models[index].img ?? "",
                                    name: HeadPhonesModel.models[index].name ??
                                        "",
                                    model:
                                        HeadPhonesModel.models[index].model ??
                                            "",
                                    price:
                                        HeadPhonesModel.models[index].price ??
                                            "");
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
