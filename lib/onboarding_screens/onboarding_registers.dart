import 'package:case_study/pages/loginpage.dart';
import 'package:case_study/pages/signuppage.dart';
import 'package:case_study/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class OnboardingRegisters extends StatelessWidget {
  const OnboardingRegisters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      //height: 340,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButtons(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogInPage())),
                text: "Log In",
                width: 180,
              ),
              CustomButtons(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage())),
                text: "Sign Up",
                width: 180,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 180,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.black26,
                ),
              ),
              Text("or"),
              SizedBox(
                width: 180,
                child: Divider(
                  thickness: 1.0,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
