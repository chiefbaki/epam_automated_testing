import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/screens/category_screen.dart';
import 'package:travel_app/presentation/screens/favourite_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int currentIndex = 0;

    final List<String> title = [
        "Favourite",
        "Wallet",
        "Home",
    ];

    final List<IconData> icons = [
        Icons.favorite, 
        Icons.wallet_giftcard_sharp, 
        Icons.home, 
    ];

    final List pages = [
      HomeScreen(),
      FavouriteScreen(),
      CategoryScreen()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: [
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: Container(color: Colors.blueAccent),
);
  
  }
}
