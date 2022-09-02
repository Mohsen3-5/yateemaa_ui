import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class button extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final Color textColor;
  const button(
      {required this.text,
      required this.color,
      required this.textColor,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(primary: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: textColor,
            size: 55.sp,
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 13.sp),
          ),
        ],
      ),
    );
  }
}
