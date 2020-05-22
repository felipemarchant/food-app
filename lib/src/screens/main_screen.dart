import 'package:flutter/material.dart';
import 'package:foodapp/src/pages/favorite_page.dart';
import 'package:foodapp/src/pages/home_page.dart';
import 'package:foodapp/src/pages/order_page.dart';
import 'package:foodapp/src/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage     = new HomePage();
    orderPage    = new OrderPage();
    favoritePage = new FavoritePage();
    profilePage  = new ProfilePage();
    pages = [homePage, orderPage, favoritePage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          bottomBarItem(icon: Icons.home, text: "Home"),
          bottomBarItem(icon: Icons.shopping_cart, text: "Orders"),
          bottomBarItem(icon: Icons.favorite, text: "Favorites"),
          bottomBarItem(icon: Icons.person, text: "Profile"),
        ],
      ),
      body: currentPage,
    );
  }
  BottomNavigationBarItem bottomBarItem({icon: IconData, text: String}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(text)
    );
  }
}
