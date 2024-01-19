import 'package:ecommerceui/components/botto,_nav_bar.dart';
import 'package:ecommerceui/pages/cart_page.dart';
import 'package:ecommerceui/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// this selected index is to controlthe bottom nav bar
  int _selectIndex = 0;

// this method will update our selected index
//when this user taps on the bottom bar

  void navigatorBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

//display the page
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MYBottomNavBar(
        onTabChange: (index) => navigatorBottomBar(index),
      ),
    );
  }
}
