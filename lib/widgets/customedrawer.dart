import 'package:case_study/widgets/appstyle.dart';
import 'package:case_study/widgets/constrant.dart';
import 'package:case_study/widgets/reusable_text.dart';
import 'package:flutter/material.dart';

Widget customedrawer() {
  return Drawer(
    backgroundColor: AppConstrant.primaryColor,
    child: GridView(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      children: [
        Column(
          children: [
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: AppConstrant.secondaryColor,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/attractive-elegant-asian-woman-long-hair-beautiful-dress-smile-with-happiness-cheerful-studio-photo-shoot-white-background_609648-1650.jpg?w=360&t=st=1709351337~exp=1709351937~hmac=d3e60b3e262fe0771790540e01a1eb24cac861ccaf41a69371ffd1cd7e6c3f92"),
                    fit: BoxFit.fill),
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              height: 20,
            ),
          ],
        ),
        Container(
          color: Colors.red,
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.settings),
                ReUsableText(
                  text: "Setting",
                  style: appstyle(16, AppConstrant.primaryColor, FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
