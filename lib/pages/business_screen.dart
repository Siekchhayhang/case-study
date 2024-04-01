import 'package:case_study/pages/screen_details.dart';
import 'package:case_study/widgets/custom_bottoms.dart';
import 'package:case_study/widgets/headers.dart';
import 'package:case_study/widgets/pages_view.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        alignment: const Alignment(0.0, 0.90),
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const HeadersPage(),
                    const SizedBox(height: 5),
                    //PagesView Sections
                    PagesView(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ScreenDetailsPages())),
                        img: const NetworkImage(
                            "https://media-api.xogrp.com/images/0108e30b-f23f-4d5b-bacb-c13df8215c94~rs_768.h")),
                    const SizedBox(height: 5),
                    PagesView(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ScreenDetailsPages())),
                        img: const NetworkImage(
                            "https://a.cdn-hotels.com/gdcs/production35/d36/a035ef14-48a6-4b6a-bfd3-68a5dcbee16f.jpg?impolicy=fcrop&w=1600&h=1066&q=medium")),
                    const SizedBox(height: 5),
                    PagesView(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ScreenDetailsPages())),
                        img: const NetworkImage(
                            "https://a.cdn-hotels.com/gdcs/production194/d27/9cf27a2a-d087-4faa-bb0e-f47e06fa1823.jpg?impolicy=fcrop&w=1600&h=1066&q=medium")),
                  ],
                );
              },
            ),
          ),
          const CustomBottoms(),
        ],
      ),
    );
  }
}
