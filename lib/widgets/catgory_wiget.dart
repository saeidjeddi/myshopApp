
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/res/dimens.dart';

class CatWiget extends StatelessWidget {
  const CatWiget({
    super.key,
    required this.title,
    required this.ontap,
    required this.colors,
    required this.iconPath,
    
    });

  final title;
  final ontap;
  final colors;
  final iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(AppDimens.small),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.medium),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: colors,
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(iconPath, width: 41, height: 41,),
            ),
          ),
          SizedBox(height: AppDimens.small * 0.5),
          Text(title, style: AppTextStyles.title.copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}
