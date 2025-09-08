import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_blog/components/extention.dart';
import 'package:shop_blog/components/text_style.dart';
import 'package:shop_blog/gen/assets.gen.dart';
import 'package:shop_blog/res/colors.dart';
import 'package:shop_blog/res/dimens.dart';
import 'package:shop_blog/widgets/app_slider.dart';
import 'package:shop_blog/widgets/catgory_wiget.dart';
import 'package:shop_blog/widgets/searchBtn.dart';
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
                            return Container(                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppDimens.small),
                                color: Colors.grey,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: AppColors.productBgGradiant)
                              ),
                              margin: EdgeInsets.all(AppDimens.small),
                             padding: EdgeInsets.all(AppDimens.small),

                              height: 298,
                              width: 200,
                              child: Column(
                                children: [
                                  Image.asset(Assets.png.unnamed.path),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      width: size.width*.4,
                                      child: Text(
                                        'ساعت مردانه خوب و قشنگ',
                                        textAlign: TextAlign.right,
                                        textDirection: TextDirection.rtl,
                                        style: AppTextStyles.productTitle,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('1,120,500 تومان'),
                                          Text('3,500,000'),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(AppDimens.small*.5),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(60),
                                          color: Colors.red),
                                        child: Text('20%'),

                                        
                                      ), 
                                    ],
                                  ),
                                 Divider(color: Colors.blue),

                                 Text('09:30:01')

                                ],
                              ),
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
                RotatedBox(
                  quarterTurns: -2,
                  child: SvgPicture.asset(Assets.svg.back)),
              AppDimens.large.width,
                Text('مشاهده همه')
              ],
            ),
              AppDimens.medium.height,
            Text('شگفت انگیزها'),
          ],
        ),
      ),
    );
  }
}