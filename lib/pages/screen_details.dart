import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/bable_icons.dart';
import 'package:case_study/widgets/custom_buttons.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class ScreenDetailsPages extends StatelessWidget {
  const ScreenDetailsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: const Alignment(0.0, 0.98),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://estaticos-cdn.prensaiberica.es/clip/8f52948c-7a5f-48f3-993c-832b98e1a679_alta-aspect-ratio_default_0.webp"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //add NetwrokImage or AssetImage to BableIcons
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const BableIcons(
                          icon: Icons.arrow_back_ios_new,
                        ),
                      ),
                      //add Icon add_alert_outlined to BableIcons
                      const BableIcons(
                        icon: Icons.favorite_border_outlined,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 250,
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.black54,
            ),
            child: Positioned(
              top: 230,
              left: 20,
              right: 20,
              bottom: 10,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReUsableText(
                              text: 'Bali Tourism',
                              style:
                                  appstyle(26, Colors.white, FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                ),
                                ReUsableText(
                                  text: 'Bali, Indonesia (234km)',
                                  style: appstyle(
                                      14, Colors.white, FontWeight.normal),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            ReUsableText(
                              text: "\$ 147",
                              style:
                                  appstyle(26, Colors.white, FontWeight.normal),
                            ),
                            ReUsableText(
                                text: "/Person",
                                style: appstyle(
                                    14, Colors.white, FontWeight.normal)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BableIcons(
                        img: NetworkImage(
                            "https://image.kpopmap.com/2021/12/Most-beautiful-korean-actress-Kim-SoHyun-cover-Instagram.jpg"),
                        width: 25,
                        height: 25,
                      ),
                      const BableIcons(
                        img: NetworkImage(
                            "https://image.kpopmap.com/2021/12/Kim-SoHyun-insta-beautiful-Korean-actress-e1640053331242.jpg"),
                        width: 25,
                        height: 25,
                      ),
                      const BableIcons(
                        img: NetworkImage(
                            "https://image.kpopmap.com/2021/12/Kim-YooJung-awesome-ent-most-beautiful-Korean-actress.jpg"),
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Center(
                        heightFactor: 1.2,
                        child: ReUsableText(
                            text: "199+ people advanture",
                            style:
                                appstyle(14, Colors.white, FontWeight.normal)),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReUsableText(
                        text:
                            "For its delicate beauty and elegant romanticism, Bali boasts the highest concentration of honeymoon travelers per square kilometer.",
                        style: appstyle(12, Colors.white, FontWeight.normal),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButtons(
                    onTap: () {},
                    text: 'Book Now',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
