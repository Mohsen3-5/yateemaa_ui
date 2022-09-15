import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

{{#appbar}}import 'package:yateemaa_ui/module/keys.dart';{{/appbar}}

{{#state_full}}

{{/state_full}}
{{^state_full}}
class {{name}} extends StatelessWidget {{#appbar}}implements PreferredSizeWidget{{/appbar}}{
  {{#appbar}}
  const {{name}}({Key? key, required this.appbarTitle, required this.height, required this.icon}) : super(key: key);

  final String appbarTitle;
  final double height;
  final IconData icon;



  @override
  Size get preferredSize => Size.fromHeight(height);
 {{/appbar}}
     {{#appbar}}
  @override
  Widget build(BuildContext context) {
 
     return AppBar(
        title: Text(
          appbarTitle,
        ),
        leading: Icon(icon),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {
                keys.josKeys1.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                stops: const [
                  0.2,
                  2.1,
                ],
                colors: <Color>[
                  Theme.of(context).primaryColor,
                  Color(0xff03e7797),
                ]),
          ),
        ));
       
  }
  {{/appbar}}


  {{#about_us}}
  final IconData icon;
  final String text;

  {{name}}({required this.icon, required this.text});
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
 {{/about_us}}
   

  {{#button}}
  final IconData icon;
  final Color color;
  final String text;
  final Color textColor;
  const {{name}}(
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

 {{/button}}

  {{#slider_item}}
   {{name}}({required this.img, required this.text});
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(img),
        Container(
          height: 30,
          width: double.infinity,
          color: Color.fromARGB(255, 32, 32, 32).withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
  {{/slider_item}}
 

 {{#sofar_card}}
  final String toptext;
  final IconData icon;
  final String bottomtext;
  {{name}}(
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
 {{/sofar_card}}

}
{{/state_full}}