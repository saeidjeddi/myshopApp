import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/res/dimens.dart';

class BtnCartAdd extends StatelessWidget {
  const BtnCartAdd({
    super.key,
    required this.price,
    this.oldPrice = 0,
    this.discount = 0,
  });

  final int price;
  final int oldPrice;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.large),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(price.sparataWihComma, style: AppTextStyles.avatarText),
                  SizedBox(width: 8),
                  Visibility(
                    visible: discount > 0 ? true : false,
                    child: Container(
                      padding: EdgeInsets.all(AppDimens.small * .5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.red,
                      ),
                      child: Text(
                        '$discount %',
                        style: AppTextStyles.mainbuttn,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Visibility(
                visible: oldPrice > 0 ? true : false,
                child: Text(
                  oldPrice.sparataWihComma,
                  style: AppTextStyles.oldPriceStyle,
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppDimens.small,
              horizontal: AppDimens.small,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.small),
              color: Colors.blue,
            ),
            child: Text('افزودن به سبد خرید', style: AppTextStyles.cartBtn),
          ),
        ],
      ),
    );
  }
}
