import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/constrant.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class BableIcons extends StatelessWidget {
  final ImageProvider? img;
  final String? subtitle;
  final IconData? icon;
  final double? width;
  final double? height;
  final void Function()? onTap;
  const BableIcons(
      {super.key,
      this.subtitle,
      this.icon,
      this.img,
      this.width = 50,
      this.height = 50,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    void incrementCounter() {
      counter++;
      print('The button has been pressed $counter times');
    }

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(40),
              //Inside the DecorationImage widget, the image is only provided if img is not null. If img is null, no image will be displayed, and the container will only display the icon
              image: img != null
                  ? DecorationImage(
                      image: img!,
                      fit: BoxFit.cover,
                      opacity: 0.9,
                      alignment: Alignment.center)
                  : null,
            ),
            child: Icon(icon),
          ),
          ReUsableText(
            text: subtitle,
            style: appstyle(16, AppConstrant.secondaryColor, FontWeight.bold),
          )
        ],
      ),
    );
  }
}
