import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/constrant.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';


class CustomButtons extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final void Function()? onTap;
  final bool? isClick;
  const CustomButtons(
      {super.key,
      required this.text,
      this.width = 340,
      this.height = 50,
      this.onTap,
      this.isClick = true});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isClick != false ? AppConstrant.primaryColor : color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black54, width: 0.3),
        ),
        child: Center(
          child: ReUsableText(
              text: text,
              style: appstyle(20, Colors.black54, FontWeight.normal)),
        ),
      ),
    );
  }
}
