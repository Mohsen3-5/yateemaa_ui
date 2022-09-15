import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class aboutusbutton extends StatelessWidget {
  final IconData icon;
  final String text;

  aboutusbutton({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
      child: SizedBox(
        height: 20.h,
        width: 35.w,
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40.sp,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
