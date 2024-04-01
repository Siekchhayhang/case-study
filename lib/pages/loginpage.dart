import 'package:case_study/pages/business_screen.dart';
import 'package:case_study/pages/signuppage.dart';
import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/custom_buttons.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    bool isClick = true;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: Container(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    ReUsableText(
                        text: "Login",
                        style: appstyle(26, Colors.black, FontWeight.bold)),
                    const SizedBox(height: 10),
                    ReUsableText(
                        text: "Login to your account",
                        style: appstyle(14, Colors.black54, FontWeight.normal)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReUsableText(
                        text: "Email",
                        style: appstyle(14, Colors.black54, FontWeight.normal)),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(height: 10),
                    ReUsableText(
                        text: "Password",
                        style: appstyle(14, Colors.black54, FontWeight.normal)),
                    const SizedBox(height: 5),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      controller: _passwordController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    const SizedBox(height: 30),
                    CustomButtons(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BusinessScreen()),
                      ),
                      text: "Login",
                      height: 70,
                      width: 400,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                ),
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: appstyle(16, Colors.black54, FontWeight.normal),
                        children: [
                      TextSpan(
                          text: "Sign Up",
                          style: appstyle(16, Colors.blue, FontWeight.normal)),
                    ])),
              ),
              const SizedBox(height: 130),
              Image.asset("assets/lock.png")
            ],
          ),
        ),
      ),
    );
  }
}
