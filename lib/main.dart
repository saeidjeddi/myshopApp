import 'package:flutter/material.dart';
import 'package:shop_blog/components/theme.dart';
import 'package:shop_blog/screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      // initialRoute: ScreenRoutNames.root,
      // routes:routes ,
      home: ProductListScreen()
    );
  }
}
