import 'package:flutter/material.dart';
import 'package:shop_blog/screens/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.blue,
      height: double.infinity,
      width: double.infinity,
      child: Center(child: ElevatedButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductListScreen()));
      }, child: Text('مشاهده جزئیات محصول'))),
    );
  }
}
