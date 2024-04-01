import 'package:case_study/pages/business_screen.dart';
import 'package:case_study/pages/loginpage.dart';
import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/custom_buttons.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmpasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        //never let user scroll
       // physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        child: Container(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    ReUsableText(
                        text: "Sign Up",
                        style: appstyle(26, Colors.black, FontWeight.bold)),
                    const SizedBox(height: 10),
                    ReUsableText(
                        text: "Create an account, It's free",
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
                        text: "Username",
                        style: appstyle(14, Colors.black54, FontWeight.normal)),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: _usernameController,
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
                    const SizedBox(height: 10),
                    ReUsableText(
                        text: "Confirm Password",
                        style: appstyle(14, Colors.black54, FontWeight.normal)),
                    const SizedBox(height: 5),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      controller: _confirmpasswordController,
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
                    const SizedBox(height: 20),
                    CustomButtons(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BusinessScreen()),
                      ),
                      text: "Sign Up",
                      height: 70,
                      width: 400,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInPage()),
                ),
                child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: appstyle(16, Colors.black54, FontWeight.normal),
                        children: [
                      TextSpan(
                          text: "Login",
                          style: appstyle(16, Colors.blue, FontWeight.normal)),
                    ])),
              ),
              const SizedBox(height: 10),
              Image.asset(
                "assets/unlock.jpg",
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
