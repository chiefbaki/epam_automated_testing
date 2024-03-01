import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/features/shopping/presentation/provider/favourite_provider.dart';

class FavouriteBtn extends StatefulWidget {
  
  const FavouriteBtn({super.key});

  @override
  State<FavouriteBtn> createState() => _FavouriteBtnState();
}

class _FavouriteBtnState extends State<FavouriteBtn> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<FavouriteProvider>(context);
    return SizedBox(
      height: 5,
      child: IconButton(
          onPressed: (){
            vm.changeState();
            debugPrint("work");
            setState(() {
              
            });
          },
          icon: Icon(
            vm.changeIcon(),
            size: 33,
          )),
    );
  }
}
