import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/res/strings.dart';
import 'package:shop_blog/route/names.dart';
import 'package:shop_blog/widgets/app_text_field.dart';
import 'package:shop_blog/widgets/appbar.dart';
import 'package:shop_blog/widgets/avatar.dart';
import 'package:shop_blog/widgets/main_button.dart';

class RegisterOtpScreen extends StatelessWidget {
  RegisterOtpScreen({super.key});
  final TextEditingController _controllerNameLastname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: RegisterAppBar(size: size),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AvatarImageName(),
                AppTextField(
                  lable: AppStrings.nameLastName,
                  hint: AppStrings.hintNameLastName,
                  controller: _controllerNameLastname,
                ),
                AppTextField(
                  lable: AppStrings.homeNumber,
                  hint: AppStrings.hintHomeNumber,
                  controller: _controllerNameLastname,
                ),
                AppTextField(
                  lable: AppStrings.postalCode,
                  hint: AppStrings.hintPostalCode,
                  controller: _controllerNameLastname,
                ),
                AppTextField(
                  lable: AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: _controllerNameLastname,
                  icon: Icon(Icons.location_pin),
                ),

                AppDimens.small.height,
                MainButton(
                  text: AppStrings.next,
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenRoutNames.mainScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
