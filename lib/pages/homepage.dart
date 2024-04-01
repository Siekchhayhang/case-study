import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/constrant.dart';
import 'package:case_study/widgets/customedrawer.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      drawer: customedrawer(),
      body: Center(
        child: ReUsableText(
          text: "Todo List",
          style: appstyle(26, AppConstrant.primaryColor, FontWeight.normal),
        ),
      ),
    );
  }
}
