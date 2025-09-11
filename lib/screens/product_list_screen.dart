import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/widgets/appbar.dart';
import 'package:shop_blog/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CartBadge(count: 0),
            Row(
              children: [
                Text('پرفروش ترین ها'),
                AppDimens.small.width,
                SvgPicture.asset(Assets.svg.sort),
              ],
            ),

            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.svg.close),
            ),
          ],
        ),
      ),
      body: SafeArea(child: Column(children: [
        TagList(),
        ProductGridView(),
        
        ])),
    );
  }
}

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimens.medium),
      child: SizedBox(
        height: 24,

        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: AppDimens.small),
              padding: EdgeInsets.symmetric(horizontal: AppDimens.small),

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(AppDimens.large),
              ),

              child: Text('تست', style: AppTextStyles.tagTitle),
            );
          },
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 0.7
        ),
        itemBuilder: (context, index) {
          return ProductItem(productName: 'productName', price: 100, discount: 20,oldPreice: 2520000,time: "50",);
        },
      ),
    );
  }
}
