import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';
import 'package:shop_blog/route/names.dart';
import 'package:shop_blog/widgets/app_text_field.dart';
import 'package:shop_blog/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.png.mainLogo.path, width: 250),
              
              AppDimens.medium.height,
              Text(
                AppStrings.otpCodeSendFor.replaceAll(
                  AppStrings.replace,
                  '09146692159',
                ),
              ),

              AppDimens.small.height,
              Text(AppStrings.wrongNumberEditNumber),
              AppDimens.large.height,
              AppTextField(
                lable: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                controller: _controller,
                prefixLable: '2:50',
              ),

              MainButton(text: 'ادامه', onPressed: () {

                Navigator.pushNamed(context, ScreenRoutNames.registerOtpScreen);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
