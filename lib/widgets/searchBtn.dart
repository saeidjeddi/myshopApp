

import 'package:flutter/material.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';

class SearchBtnMainHome extends StatelessWidget {
  const SearchBtnMainHome({
    super.key,
    required this.size, required this.onTap,
  });

  final Size size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.medium),
        child: Container(
          // margin: const EdgeInsets.all(AppDimens.small),
          // padding: const EdgeInsets.all(AppDimens.small),
           height: size.height * 0.07, 
           width: double.infinity,
           decoration: BoxDecoration(
            
            color: AppColors.appbar,
            borderRadius: BorderRadius.circular(AppDimens.medium),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow,
                spreadRadius: 0.5,
                blurRadius: 3,
                offset: const Offset(0, 3), 
              ),
            ],
           ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black),
              ),
              Text('جستجوی محصول', style:AppTextStyles.selectedTab,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(Assets.png.mainLogo.path ),
                ),
            ],
        ),
      ),
                 ),
    );
  }
}
