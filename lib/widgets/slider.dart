import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yateemaa_ui/widgets/sliderItem.dart';

class slider extends StatelessWidget {
  slider({required this.imgList, required this.desList});
  final List<String> imgList;
  final List<String> desList;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            sliderItem(img: imgList[itemIndex], text: desList[itemIndex]),
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          aspectRatio: 1.5,
          viewportFraction: 1.0,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enlargeCenterPage: true,
        ));
  }
}
