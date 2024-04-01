import 'package:case_study/onboarding_screens/onboardings.dart';
import 'package:case_study/widgets/bable_icons.dart';
import 'package:flutter/material.dart';

class CustomBottoms extends StatelessWidget {
  const CustomBottoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
      width: 300,
      height: 83,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BableIcons(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onboardings())),
            icon: Icons.home_outlined,
          ),
          BableIcons(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onboardings())),
            icon: Icons.compare_sharp,
          ),
          BableIcons(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onboardings())),
            icon: Icons.note_alt_outlined,
          ),
          BableIcons(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onboardings())),
            icon: Icons.favorite_border_sharp,
          ),
          BableIcons(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onboardings())),
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
