import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            child: Container(
              height: 180,
              width: width - 40,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: const Color(0xFF363f93).withOpacity(0.3),
                  offset: const Offset(0, 3),
                  blurRadius: 7,
                  spreadRadius: 7,
                )
              ]),
            ),
          ),
          Positioned(
              left: 10,
              bottom: 30,
              child: Container(
                height: 180,
                width: width / 3,
                decoration: BoxDecoration(
                    color: const Color(0xFF363f93),
                    borderRadius: BorderRadius.circular(20)),
              )),
          Positioned(
            top: 60,
            left: (width / 3) + 20,
            child: const Text(
              "Big Miracles",
              style: TextStyle(
                  color: Color(0xFF363f93),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 85,
            left: (width / 3) + 20,
            child: const Text(
              "Dylan Ahmed",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
              top: 115,
              left: (width / 3) + 20,
              right: 20,
              child: const Divider(
                height: 10,
                color: Colors.grey,
              )),
          Positioned(
            top: 135,
            left: (width / 3) + 20,
            child: const Text(
              "It's larger than life",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
