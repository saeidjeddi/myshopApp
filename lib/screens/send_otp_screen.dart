import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';
import 'package:shop_blog/route/names.dart';
import 'package:shop_blog/widgets/app_text_field.dart';
import 'package:shop_blog/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.png.mainLogo.path, width: 250),
              AppDimens.large.height,
              AppTextField(
                lable: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: _controller,
              ),

              MainButton(
                text: 'ادامه',
                onPressed: () {
                  Navigator.pushNamed(context, ScreenRoutNames.getOtpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
