import 'package:flutter/widgets.dart';
import 'package:shop_blog/route/names.dart';
import 'package:shop_blog/screens/get_otp_screen.dart';
import 'package:shop_blog/screens/main/main_screen.dart';
import 'package:shop_blog/screens/product_list_screen.dart';
import 'package:shop_blog/screens/product_single_screen.dart';
import 'package:shop_blog/screens/register_otp_screen.dart';
import 'package:shop_blog/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {

  ScreenRoutNames.root : (context) => SendOtpScreen(),
  ScreenRoutNames.getOtpScreen : (context) => GetOtpScreen(),
  ScreenRoutNames.registerOtpScreen : (context) => RegisterOtpScreen(), 
  ScreenRoutNames.mainScreen : (context) => MainScreen(),
  ScreenRoutNames.productListScreen : (context) => ProductListScreen(),
  ScreenRoutNames.productSingleScreen : (context) => ProductSingleScreen(),
};
