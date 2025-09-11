import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';
import 'package:shop_blog/widgets/appbar.dart';
import 'package:shop_blog/widgets/surfase_contener.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'سبد خرید',
              textDirection: TextDirection.rtl,
              style: AppTextStyles.title,
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(AppDimens.medium),
              padding: EdgeInsets.all(AppDimens.medium),
              width: size.width,
              height: size.height * .1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.small),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 3),
                    blurRadius: 3,
                  ),
                ],
              ),

              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.svg.leftArrow),
                  ),

                  Expanded(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          AppStrings.sendToAddress,
                          style: AppTextStyles.productTitle,
                        ),
                        FittedBox(
                          child: Text(
                            AppStrings.lurem,
                            textDirection: TextDirection.rtl,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: AppTextStyles.caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return SurfaseContener(child: ShopingCartItem(prudactTitle: 'ساعت زنانه و مردانه اسپورت و هوشمند', price: 5000000, oldprice: 600000,));
                },
              ),
            ),
// BtnCartAdd(price: 200000,),
            Container(height: 50, width: double.infinity, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class ShopingCartItem extends StatelessWidget {
  ShopingCartItem({
  super.key,
  required this.prudactTitle,
  required this.price,
  required this.oldprice
  
  });

  int count = 1;
  final String prudactTitle;
  final int price;
  final int oldprice;

  @override
  Widget build(BuildContext context) {
    return SurfaseContener(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  prudactTitle,
                  style: AppTextStyles.productTitle.copyWith(fontSize: 12),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  ' قیمت : ${price.sparataWihComma} تومان',
                  style: AppTextStyles.caption,
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  'با  تخفیف : ${oldprice.sparataWihComma} تومان',
                  style: AppTextStyles.caption.copyWith(
                    color: Colors.blue[400],
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Divider(),

                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.delete),
                    ),

                    Expanded(child: SizedBox()),

                    IconButton(
                      onPressed: () {
                      },
                      icon: SvgPicture.asset(Assets.svg.minus),
                    ),

                    Text('عدد $count'),

                    IconButton(
                      onPressed: () {
                      },
                      icon: SvgPicture.asset(Assets.svg.plus),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(Assets.png.unnamed.path, height: 80, width: 80),
        ],
      ),
    );
  }
}
