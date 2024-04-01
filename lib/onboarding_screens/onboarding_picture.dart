import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class OnboardingPictures extends StatelessWidget {
  const OnboardingPictures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      width: 450,
      height: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://cdn.travelpeacockmagazine.com/wp-content/uploads/2023/05/img-1-kayon.jpg"),
              fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReUsableText(
                    text: "Experience the \nWonders of the World",
                    style: appstyle(26, Colors.white, FontWeight.bold)),
                ReUsableText(
                    text: "And conquer with us",
                    style: appstyle(14, Colors.white, FontWeight.normal)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
