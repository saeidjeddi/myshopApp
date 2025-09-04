import 'package:flutter/material.dart';
import 'package:shop_blog/screens/product_single_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.yellow,
      height: double.infinity,
      width: double.infinity,


      child: Center(child: ElevatedButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductSingleScreen()));
      }, child: Text('مشاهده جزئیات محصول'))),
    );
  }
}
