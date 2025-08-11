import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';

class AvatarImageName extends StatelessWidget {
  const AvatarImageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDimens.medium.height,

        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(Assets.png.avatar.path),
        ),
        AppDimens.medium.height,
        Text(AppStrings.chooseProfileImage)
      ],
    );
  }
}