import 'package:flutter/material.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/widgets/app_slider.dart';
import 'package:shop_blog/widgets/catgory_wiget.dart';
import 'package:shop_blog/widgets/product_item.dart';
import 'package:shop_blog/widgets/searchBtn.dart';
import 'package:shop_blog/widgets/verticall_text_shekeft.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBtnMainHome(size: size, onTap: () {}),
              AppSlider(size: size, imgList: []),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatWiget(
                    title: 'کلاسیک',
                    colors: AppColors.catClasicColors,
                    iconPath: Assets.svg.clasic,
                    ontap: () {},
                  ),
                  CatWiget(
                    title: 'هوشمند',
                    colors: AppColors.catSmartColors,
                    iconPath: Assets.svg.smart,
                    ontap: () {},
                  ),
                  CatWiget(
                    title: 'دیجیتال',
                    colors: AppColors.catDigitalColors,
                    iconPath: Assets.svg.digital,
                    ontap: () {},
                  ),
                  CatWiget(
                    title: 'رو میزی',
                    colors: AppColors.catDesktopColors,
                    iconPath: Assets.svg.desktopcloc,
                    ontap: () {},
                  ),
                ],
              ),

              AppDimens.large.height,

              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ProductItem(
                              productName: 'ساعت خوب' ,
                              price: 2000,
                              oldPreice: 50000,
                              discount: 20,
                              time: '100',
                              );
                          },
                        ),
                      ),
                    ),
                  ),

                  VerticalText(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

