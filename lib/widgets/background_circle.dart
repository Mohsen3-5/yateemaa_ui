import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class backgroundcircle extends StatelessWidget {
  final double bottom;
  final double left;

  backgroundcircle({required this.bottom, required this.left});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: left,
      child: Container(
        width: 25.w,
        height: 25.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor,
              offset: const Offset(0.0, 1.0), //(x,y)
              blurRadius: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
