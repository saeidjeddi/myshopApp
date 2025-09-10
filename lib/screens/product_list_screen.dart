import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/widgets/appbar.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartBadge(count: 9,),
          Row(
            children: [
              Text('پرفروش ترین ها'),
              AppDimens.small.width,
              SvgPicture.asset(Assets.svg.sort)
            ],
          ),
          
          IconButton(onPressed: (){}, icon: SvgPicture.asset(Assets.svg.close)),

          
        ],
      ),),
      body: SafeArea(
        child: Container(
        
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Center(child: Text('لیست محصولات', style: TextStyle(fontSize: 30))),
        ),
      ),
    );
  }
}







