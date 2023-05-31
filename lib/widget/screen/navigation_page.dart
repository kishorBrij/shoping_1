
import 'package:flutter/material.dart';
import 'package:shoping_1/utils/image.dart';
import 'package:shoping_1/widget/view/cart/cart_page.dart';
import 'package:shoping_1/widget/view/favourate/favourate_page.dart';
import 'package:shoping_1/widget/view/home/home_page.dart';
import 'package:shoping_1/widget/view/order/order_page.dart';
import 'package:shoping_1/widget/view/profile/profile_page.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const HomePage(),
    const FavouratePage(),
    const CartPage(),
    const ProfilePage(),
    const OrderPage()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImage.house,
                height: 25,
                width: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImage.favourate,
                height: 25,
                width: 25,
              ),
              label: 'Favourate',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImage.cart,
                height: 25,
                width: 25,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImage.profile,
                height: 25,
                width: 25,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImage.orders,
                height: 25,
                width: 25,
              ),
              label: 'Orders',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          //iconSize: 25,
          onTap: _onItemTapped,
          elevation: 10),
    );
  }
}
