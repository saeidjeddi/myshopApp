import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';
import 'package:shop_blog/widgets/appbar.dart';
import 'package:shop_blog/widgets/surfase_contener.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.profile,
              textDirection: TextDirection.rtl,
              style: AppTextStyles.title,
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: SizedBox(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppDimens.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.large.height,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppDimens.large * 2),
                    child: Image.asset(Assets.png.avatar.path),
                  ),
                  AppDimens.small.height,
                  Text('سعید جدی', style: AppTextStyles.avatarText),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppStrings.activeAddress,
                      style: AppTextStyles.avatarText,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Assets.svg.leftArrow),

                        SizedBox(
                          width: size.width * .7,
                          child: Text(
                            AppStrings.lurem,
                            style: AppTextStyles.title.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppDimens.medium.height,

                  Divider(color: AppColors.surfaceColor, height: 2),

                  AppDimens.medium.height,

                  ProfileItem(svgIcon: Assets.svg.cart, content:'603799755361777-',),
                  ProfileItem(svgIcon: Assets.svg.user, content:'سعید جدی' ,),
                  ProfileItem(svgIcon: Assets.svg.phone, content:'0914669215-' ,),


                  SurfaseContener(child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('قوانین و مقررات'),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.svgIcon, required this.content});

  final String svgIcon;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.medium),
        child: Row(
          children: [
            Expanded(
              child: Text(
                content,
                style: AppTextStyles.title.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                softWrap: true,
                maxLines: 2,
                textAlign: TextAlign.right,
              ),
            ),
        
            AppDimens.medium.width,
        
            SvgPicture.asset(svgIcon),
        
          ],
        ),
      ),
    );
  }
}
