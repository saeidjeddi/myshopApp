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
   required this.imgList
   });

  final Size size;
  final List<String> imgList;

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselSliderController _controller = CarouselSliderController();

  final List<Widget> items = imgList
      .map(
        (e) => Padding(
          padding: EdgeInsets.all(AppDimens.medium),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.medium),
            child: Image.network(e, fit: BoxFit.cover),
          ),
        ),
      )
      .toList();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            items: items,
            options: CarouselOptions(
              autoPlay: true,
              reverse: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        _controller.animateToPage(e.key);
                      },
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == e.key ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
