import 'package:flutter/material.dart';
import 'package:icml/Widget/deposit_screen.dart';
import 'package:icml/Widget/home_screen.dart';
import 'package:icml/Widget/menu_screen.dart';
import 'package:icml/Widget/menutextwidget.dart';
import 'package:icml/Widget/profile_screen.dart';
//import 'package:icml/Widget/topbar.dart';

class MenuItem {
  final String imagePath;
  final String text;

  MenuItem({required this.imagePath, required this.text});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    MenuScreen(),
    ProfileScreen(),
    DepositScreen(),
  ];

  List<MenuItem> menuItems = [
    MenuItem(imagePath: 'image/fs.png', text: 'Statement'),
    MenuItem(imagePath: 'image/portfolio.png', text: 'Portfolio'),
    MenuItem(imagePath: 'image/salebuy.png', text: 'Sale Buy'),
    MenuItem(imagePath: 'image/deposit.png', text: 'Deposit'),
    MenuItem(imagePath: 'image/stock.png', text: 'OMS'),
    //Icons.port
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: menuItems.map((item) {
              return buildMenuItem(item);
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItem item) {
    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = menuItems.indexOf(item);
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            item.imagePath,
            width: 30,
            height: 30,
          ),
          MenuText(text: item.text),
        ],
      ),
    );
  }
}
