import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productName,
    required this.price,
    this.discount = 0,
    this.oldPreice = 0,
    this.time = '',
  });

  final String productName;
  final int price;
  final int oldPreice;
  final discount;
  final time;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.small),
        color: Colors.grey,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.productBgGradiant,
        ),
      ),
      margin: EdgeInsets.all(AppDimens.small),
      padding: EdgeInsets.all(AppDimens.small),

      height: 298,
      width: 200,
      child: Column(
        children: [
          Image.asset(Assets.png.unnamed.path),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: size.width * .4,
              child: Text(
                productName,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: AppTextStyles.productTitle,
                maxLines: 1,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${price.sparataWihComma} تومان',
                    style: AppTextStyles.avatarText,
                  ),
                  Visibility(
                    visible: discount > 0 ? true : false,
                    child: Text(
                      '${oldPreice.sparataWihComma} ',
                      style: AppTextStyles.oldPriceStyle,
                    ),
                  ),
                ],
              ),
              Visibility(
              visible: discount > 0 ? true : false,
                child: Container(
                  padding: EdgeInsets.all(AppDimens.small * .5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.red,
                  ),
                  child: Text('$discount %'),
                ),
              ),
            ],
          ),
          Visibility(
            visible: time.toString().isEmpty ? false:true,
            child: Column(
              children: [
                Divider(color: Colors.blue),
                Text(time, style: AppTextStyles.prodTimerStyle),
              ],
            ),
          ),

        
        ],
      ),
    );
  }
}
