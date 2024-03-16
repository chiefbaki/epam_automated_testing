import 'package:flutter/material.dart';

class FavouriteBtn extends StatefulWidget {
  const FavouriteBtn({super.key});

  @override
  State<FavouriteBtn> createState() => _FavouriteBtnState();
}

class _FavouriteBtnState extends State<FavouriteBtn> {
  @override
  Widget build(BuildContext context) {
    // final vm = Provider.of<FavouriteProvider>(context);
    return SizedBox(
      height: 5,
      child: IconButton(
          onPressed: () {
            debugPrint("work");
            setState(() {});
          },
          icon: Icon(
            Icons.favorite,
            size: 33,
          )),
    );
  }
}
