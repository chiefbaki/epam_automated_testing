import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/features/favourite/presentation/provider/favorite_provider.dart';
import 'package:travel_app/features/widgets/category_item.dart';
import 'package:travel_app/features/widgets/search_text_field.dart';

@RoutePage()
class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<FavouriteProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              children: [
                SearchTextField(
                  controller: TextEditingController(),
                  hintText: "Search..",
                ),
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                    child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 12),
                  itemBuilder: (_, index) {
                    return CategoryItem(
                      id: vm.getBasket[index].id ?? "",
                        name: vm.getBasket[index].name ?? "",
                        model: vm.getBasket[index].model ?? "",
                        price: vm.getBasket[index].price ?? "",
                        img: vm.getBasket[index].img ?? "");
                  },
                  itemCount: vm.getBasket.length,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
