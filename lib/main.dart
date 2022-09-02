import 'package:flutter/material.dart';
import 'package:yateemaa_ui/module/keys.dart';
import 'package:yateemaa_ui/widgets/aboutus_button.dart';

import 'package:yateemaa_ui/widgets/app_bar.dart';
import 'package:yateemaa_ui/widgets/background_circle.dart';
import 'package:yateemaa_ui/widgets/gridbuttons.dart';
import 'package:yateemaa_ui/widgets/slider.dart';
import 'package:yateemaa_ui/widgets/sofar_card.dart';
import 'package:yateemaa_ui/widgets/time_line_item.dart';
import 'package:sizer/sizer.dart';

/*
In this app Ui project I tried to minimize repeating code by make widget files 
and call it when I need.

I used 'Sizer' package to make my ui responsive.
Sizer  helps  to create responsive UI easily.

I used 'carousel_slider' package to make a silder has all posible features.
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> imgList = [
    //slider images list
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  final List<String> desList = [
    //silider images descriptions
    '1. pic',
    '2. pic',
    '3. pic',
    '4. pic',
    '5. pic',
    '6. pic'
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      child:
      return MaterialApp(
        theme: ThemeData(
            primaryColor: const Color(0xff0b8a8d), fontFamily: 'Kanit'),
        home: fullapp(
          imgList: imgList,
          desList: desList,
        ),
      );
    });
  }
}

class fullapp extends StatelessWidget {
  const fullapp({
    Key? key,
    required this.imgList,
    required this.desList,
  }) : super(key: key);

  final List<String> imgList;
  final List<String> desList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0fbfbfb),
        key: keys.josKeys1,
        drawer: const Drawer(),
        appBar: appbar(
          appbarTitle: 'YateemAC',
        ),
        body: Stack(children: [
          backgroundcircle(bottom: 400.sp, left: 200.sp),
          backgroundcircle(bottom: -60.sp, left: 50.sp),
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /* Slider Widget */
                    slider(imgList: imgList, desList: desList),
                    /*  */
                    SizedBox(
                      height: 7.h,
                    ),
                    Text('Find Orphans To Support',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey,
                            fontFamily: 'PT')),
                    SizedBox(
                      height: 3.h,
                    ),
                    /* Buttons section Widget */
                    const gridbuttons(),
                    /*  */
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'Donation TimeLine',
                      style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    /* TimeLine section Widget */
                    const time_line(),
                    /* */
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'So far we are',
                      style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    /* So far section Widget */
                    const so_far_structure(),
                    /*  */
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'About us.',
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontFamily: 'PT'),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    /* About us section Widget */
                    const aboutus_structure(),
                    /*  */
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      '© 2022 YateemAc All rights reserved',
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    GestureDetector(
                      child: Text("Terms and privacy",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                              fontSize: 10.sp)),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ]),
            ),
          ),
        ]));
  }
}

/* Time line implementation */
class time_line extends StatelessWidget {
  const time_line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 5.0,
          ),
        ],
      ),
      height: 38.h,
      child: Column(
        children: [
          timelineitem(
              title: 'Eid gift delivered',
              subtitile: 'look at sami impression',
              trailing: '14 july'),
          timelineitem(
              title: 'Eid gift delivered',
              subtitile: 'look at sami impression',
              trailing: '14 july'),
          timelineitem(
              title: 'Eid gift delivered',
              subtitile: 'look at sami impression',
              trailing: '14 july'),
          TextButton(
            onPressed: () {},
            child: const Text('view more',
                style: TextStyle(
                  fontSize: 18,
                )),
          ),
        ],
      ),
    );
  }
}

// So far section implementation
class so_far_structure extends StatelessWidget {
  const so_far_structure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(40, 0, 50, 0),
        child: Row(children: <Widget>[
          sofarcard(
              toptext: '250+', icon: Icons.money_off, bottomtext: 'Donars'),
          sofarcard(
              toptext: '1000+', icon: Icons.people, bottomtext: 'Orphans'),
          sofarcard(
              toptext: '800',
              icon: Icons.baby_changing_station,
              bottomtext: 'Orphans supported')
        ]));
  }
}

// about us section implementation
class aboutus_structure extends StatelessWidget {
  const aboutus_structure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(40, 0, 50, 0),
        child: Row(children: <Widget>[
          aboutusbutton(
            icon: Icons.alarm,
            text: 'alarm',
          ),
          aboutusbutton(
            icon: Icons.description,
            text: 'des',
          ),
          aboutusbutton(
            icon: Icons.headphones,
            text: 'Headphone',
          ),
        ]));
  }
}
