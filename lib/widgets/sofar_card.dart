import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class sofarcard extends StatelessWidget {
  final String toptext;
  final IconData icon;
  final String bottomtext;
  sofarcard(
      {required this.toptext, required this.icon, required this.bottomtext});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 42.w,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        margin: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: Colors.blueGrey,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              toptext,
              style: TextStyle(fontSize: 15.sp),
            ),
            SizedBox(
              height: 2.h,
            ),
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 40.sp,
            ),
            SizedBox(
              height: 2.h,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.sp),
                child: Text(
                  bottomtext,
                  style: TextStyle(fontSize: 15.sp),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
