import 'package:flutter/material.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/widgets/app_slider.dart';
import 'package:shop_blog/widgets/searchBtn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBtnMainHome(size: size, onTap:() {},),

              AppSlider(size: size),
              
              
              
               ],
          ),
        ),
      ),
    );
  }
}
