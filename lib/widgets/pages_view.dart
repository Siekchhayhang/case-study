import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/bable_icons.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class PagesView extends StatelessWidget {
  final NetworkImage img;
  final void Function()? onTap;
  const PagesView({super.key, required this.img, this.onTap});

  static PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Stack(
          alignment: const Alignment(-0.9, -0.9),
          children: [
            Container(
              height: 350,
              padding: const EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: img, fit: BoxFit.fill),
              ),
            ),
            const BableIcons(
              icon: Icons.favorite_border_sharp,
            ),
            //Bali Tourism
            Positioned(
              top: 230,
              left: 20,
              right: 20,
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReUsableText(
                        text: 'Bali \n' 'Tourism',
                        style: appstyle(26, Colors.white, FontWeight.normal),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          ReUsableText(
                            text: 'Bali, Indonesia',
                            style:
                                appstyle(14, Colors.white, FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        ReUsableText(
                          text: "\$ 147",
                          style: appstyle(26, Colors.white, FontWeight.normal),
                        ),
                        ReUsableText(
                            text: "/Person",
                            style:
                                appstyle(14, Colors.white, FontWeight.normal)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
