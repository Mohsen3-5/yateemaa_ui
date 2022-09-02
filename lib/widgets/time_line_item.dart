import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class timelineitem extends StatelessWidget {
  final String title;
  final String subtitile;
  final String trailing;
  timelineitem({
    required this.title,
    required this.subtitile,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      decoration: const BoxDecoration(
          border: Border(
        bottom:
            BorderSide(width: 0.5, color: Color.fromARGB(255, 116, 113, 113)),
      )),
      child: ListTile(
        leading: Icon(
          Icons.delivery_dining,
          size: 30.sp,
        ),
        title: Text(title, style: TextStyle(fontSize: 13.sp)),
        subtitle: Text(subtitile, style: TextStyle(fontSize: 10.sp)),
        trailing: Text(trailing, style: TextStyle(fontSize: 10.sp)),
      ),
    );
  }
}
