import 'package:flutter/material.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/screens/main/bascket_screen.dart';
import 'package:shop_blog/screens/main/home_screen.dart';
import 'package:shop_blog/screens/main/profile_screen.dart';
import 'package:shop_blog/widgets/btm_nav_item.dart';

class BtmNavScrinIndex {
  BtmNavScrinIndex._();

  static const home = 0;
  static const bascket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int setIndex = BtmNavScrinIndex.home;

    btmNavePressIndex({required index}){
      setState(() {
        setIndex = index;
      });

    }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNaveHeight = size.height * .08;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: btmNaveHeight,
              left: 0,
              right: 0,

              child: IndexedStack(
                index: setIndex,
                children: [
                    HomeScreen(),
                    BascketScreen(),
                    ProfileScreen(),
                ],
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                color: AppColors.btmNavColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BtnNavItem(
                      iconSvgPath: Assets.svg.home,
                      text: 'Home',
                      isActive: setIndex == BtmNavScrinIndex.home,
                      onTap: () => btmNavePressIndex(index: BtmNavScrinIndex.home),
                    ),
                    BtnNavItem(
                      iconSvgPath: Assets.svg.cart,
                      text: 'Cart',
                      isActive: setIndex == BtmNavScrinIndex.bascket,
                      onTap: () => btmNavePressIndex(index: BtmNavScrinIndex.bascket),
                    ),
                    BtnNavItem(
                      iconSvgPath: Assets.svg.user,
                      text: 'User',
                      isActive: setIndex == BtmNavScrinIndex.profile,
                      onTap: () => btmNavePressIndex(index: BtmNavScrinIndex.profile),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
