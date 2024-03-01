import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              children: [
                SearchTextField(controller: TextEditingController()),
                const SizedBox(
                  height: 12,
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
