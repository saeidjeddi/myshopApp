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
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int setIndex = BtmNavScrinIndex.home;

  btmNavePressIndex({required index}) {
    setState(() {
      setIndex = index;
      if (_routeHistory.contains(index)) {
        _routeHistory.remove(index);
      }
      _routeHistory.add(index);
    });
  }

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final map = {
    BtmNavScrinIndex.home: _homeKey,
    BtmNavScrinIndex.bascket: _basketKey,
    BtmNavScrinIndex.profile: _profileKey,
  };

  DateTime? _lastBackPressed;

  Future<bool> _onWillPop() async {
    if (map[setIndex]!.currentState!.canPop()) {
      map[setIndex]!.currentState!.pop();
    } else if (_routeHistory.length > 1) {
      setState(() {
        _routeHistory.removeLast();
        setIndex = _routeHistory.last;
      });
    } else if (setIndex != BtmNavScrinIndex.home) {
      setState(() {
        setIndex = BtmNavScrinIndex.home;
        _routeHistory = [BtmNavScrinIndex.home];
      });
    } else {
      if (_lastBackPressed == null ||
        DateTime.now().difference(_lastBackPressed!) > Duration(seconds: 2)) {
      _lastBackPressed = DateTime.now();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('برای خروج دوباره دکمه بازگشت را بزنید')),
      );
      return false;
      }
      return true;
    }
    return false;
  }

  List<int> _routeHistory = [BtmNavScrinIndex.home];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double btmNaveHeight = size.height * .08;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
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
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        );
                      },
                    ),
                    Navigator(
                      key: _basketKey,
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) => BascketScreen(),
                        );
                      },
                    ),
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        );
                      },
                    ),
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
                        text: 'خانه',
                        isActive: setIndex == BtmNavScrinIndex.home,
                        onTap: () =>
                            btmNavePressIndex(index: BtmNavScrinIndex.home),
                      ),
                      BtnNavItem(
                        iconSvgPath: Assets.svg.cart,
                        text: 'سبد خرید',
                        isActive: setIndex == BtmNavScrinIndex.bascket,
                        onTap: () =>
                            btmNavePressIndex(index: BtmNavScrinIndex.bascket),
                      ),
                      BtnNavItem(
                        iconSvgPath: Assets.svg.user,
                        text: 'پروفایل',
                        isActive: setIndex == BtmNavScrinIndex.profile,
                        onTap: () =>
                            btmNavePressIndex(index: BtmNavScrinIndex.profile),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
