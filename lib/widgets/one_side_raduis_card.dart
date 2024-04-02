import 'package:flutter/material.dart';

class OneSideRaduisCard extends StatelessWidget {
  const OneSideRaduisCard({
    super.key,
    required this.height,
    required this.text1,
    required this.text2,
    required this.borderRadius,
  });
  final String text1;
  final String text2;
  final double height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20, left: 20),
          height: (height * 20) / 100,
          decoration: BoxDecoration(
              color: const Color(0xFF363f93),
              borderRadius: borderRadius,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF363f93).withOpacity(0.3),
                  offset: const Offset(0, 3),
                  blurRadius: 7,
                  spreadRadius: 7,
                )
              ]),
        ),
        Positioned(
          left: 50,
          top: 40,
          child: Text(
            text1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        Positioned(
          left: 50,
          top: 60,
          child: Text(
            text2,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
