import 'package:custom_cards/widgets/one_side_raduis_card.dart';
import 'package:custom_cards/widgets/second_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  height: (height * 30) / 100,
                  decoration: BoxDecoration(
                      color: const Color(0xFF363f93),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30)),
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
                    bottom: 40,
                    child: Container(
                      height: 100,
                      width: (width * 70) / 100,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(180),
                              topRight: Radius.circular(180))),
                    )),
                const Positioned(
                  left: 20,
                  bottom: 80,
                  child: Text(
                    "Your Books",
                    style: TextStyle(
                        color: Color(0xFF363f93),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SecondCard(width: width),
            OneSideRaduisCard(
                height: height,
                text1: "THE BEST",
                text2: "Your life starts here",
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                )),
            const SizedBox(
              height: 30,
            ),
            OneSideRaduisCard(
                height: height,
                text1: "START NOW",
                text2: "Try it now",
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(90),
                )),
          ],
        ),
      ),
    );
  }
}
