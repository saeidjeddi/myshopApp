

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(

          children: [
            Row(

              children: [
                Transform.rotate(
                  angle: 1.5,
                  child: SvgPicture.asset(Assets.svg.back),
                  ),
                AppDimens.large.width,
                Text('مشاهده همه',),
              ],
            ),
            AppDimens.medium.height,
            Text('شگفت انگیزها', style: AppTextStyles.amazingStyle,),
          ],
        ),
      ),
    );
  }
}
