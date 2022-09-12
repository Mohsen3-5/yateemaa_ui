import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yateemaa_ui/widgets/sliderItem.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sizer/sizer.dart';

class slider extends StatefulWidget {
  slider({required this.imgList, required this.desList});
  final List<String> imgList;
  final List<String> desList;
  int currentIndex = 0;
  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    void updateindex(int index) {
      setState(() {
        widget.currentIndex = index;
      });
    }

    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: widget.imgList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              Future.delayed(Duration.zero, () async {
                updateindex(itemIndex);
              });

              return sliderItem(
                  img: widget.imgList[itemIndex],
                  text: widget.desList[itemIndex]);
            },
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 1.5,
              viewportFraction: 1.0,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enlargeCenterPage: true,
            )),
        SizedBox(
          height: 2.h,
        ),
        DotsIndicator(
          dotsCount: widget.imgList.length,
          position: widget.currentIndex.toDouble(),
          decorator: const DotsDecorator(
            activeSize: Size.square(12.0),
            color: Colors.black87, // Inactive color
            activeColor: const Color(0xff0b8a8d),
          ),
        )
      ],
    );
  }
}
