import 'package:case_study/onboarding_screens/onboarding_picture.dart';
import 'package:case_study/onboarding_screens/onboarding_registers.dart';
import 'package:case_study/pages/instant_registers.dart';
import 'package:case_study/widgets/custome_button_logo.dart';
import 'package:flutter/material.dart';

class Onboardings extends StatelessWidget {
  const Onboardings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 450,
            child: Column(
              children: [
                const OnboardingPictures(),
                const SizedBox(height: 15),
                const OnboardingRegisters(),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InstantRegisters(),
                    ),
                  ),
                  child: const CustomButtonsLogo(
                    text: "Continue with Google",
                    img: AssetImage("assets/googlelogo.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InstantRegisters(),
                    ),
                  ),
                  child: const CustomButtonsLogo(
                    text: "Continue with Facebook",
                    img: AssetImage("assets/facebooklogo.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InstantRegisters(),
                    ),
                  ),
                  child: const CustomButtonsLogo(
                    text: "Continue with Apple",
                    img: AssetImage("assets/applelogo.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
