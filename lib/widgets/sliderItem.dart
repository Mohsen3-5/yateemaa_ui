import 'package:flutter/material.dart';

class sliderItem extends StatelessWidget {
  sliderItem({required this.img, required this.text});
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
}
