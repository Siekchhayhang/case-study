import 'package:case_study/pages/profilepage.dart';
import 'package:case_study/pages/trippage.dart';
import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/bable_icons.dart';
import 'package:case_study/widgets/constrant.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:case_study/widgets/search_destination.dart';
import 'package:flutter/material.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      decoration: const BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            height: 130,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //add NetwrokImage or AssetImage to BableIcons
                  //Profile Page
                  BableIcons(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage())),
                    img: const NetworkImage(
                        "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSPyqL4hKasYAglCKDiPVhICxUHxha89SxU8SanPUcfGKW4Ec1G2bt2EQxHhHmmGgGSZkHaRTnEUa3QUi4"),
                  ),
                  SizedBox(
                    height: 100,
                    child: Column(
                      children: [
                        ReUsableText(
                            text: "Location",
                            style: appstyle(16, AppConstrant.primaryColor,
                                FontWeight.normal)),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            ReUsableText(
                                text: "Brooklyn, NY 112",
                                style: appstyle(20, AppConstrant.primaryColor,
                                    FontWeight.normal)),
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: AppConstrant.secondaryColor,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  //add Icon add_alert_outlined to BableIcons
                  const BableIcons(
                    icon: Icons.add_alert_outlined,
                  ),
                ],
              ),
            ),
          ),
          //Search Destination Section
          const SearchDestination(),
          //BableIcons Sections
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BableIcons(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TripPage())),
                  subtitle: "Trip",
                  icon: Icons.travel_explore,
                ),
                BableIcons(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TripPage())),
                  subtitle: "Hotel",
                  icon: Icons.hotel,
                ),
                BableIcons(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TripPage())),
                  subtitle: "Bus",
                  icon: Icons.bus_alert_sharp,
                ),
                BableIcons(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TripPage())),
                  subtitle: "Flight",
                  icon: Icons.flight,
                ),
                BableIcons(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const TripPage())),
                  subtitle: "Ship",
                  icon: Icons.sailing_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
