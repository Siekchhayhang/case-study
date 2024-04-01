import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class CustomButtonsLogo extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final AssetImage img;

  const CustomButtonsLogo(
      {super.key,
      required this.text,
      this.width = 380,
      this.height = 50,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black54, width: 0.3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 5), child: Image(image: img)),
          Center(
            widthFactor: 1.6,
            child: ReUsableText(
                text: text,
                style: appstyle(16, Colors.black54, FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
