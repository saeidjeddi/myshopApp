
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_blog/res/dimens.dart';

//TODO fake slider data

final List<String> imgList = [
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png',
  'https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png',
];



class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController _controller =CarouselController();
  
    final List<Widget> items = imgList.map((e) =>
    Padding(
      padding: EdgeInsets.all(AppDimens.medium),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        child: Image.network(e,fit: BoxFit.cover,)),
      )
  
   ).toList();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 2, 2),
      child: Column(
        children: [
          CarouselSlider(
            items: items, options: CarouselOptions(
            autoPlay: true,
            onPageChanged:(index,reason){
              setState(() {
                 _current = index;
              });
               
            }
          )),

        ],
      ),
               
    );
  }
}