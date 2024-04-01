import 'package:case_study/widgets/constrant.dart';
import 'package:flutter/material.dart';

class SearchDestination extends StatelessWidget {
  const SearchDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 80,
      child: TextField(
        onTap: () {},
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search Destination",
          hintStyle: TextStyle(color: AppConstrant.primaryColor, fontSize: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: AppConstrant.secondaryColor,
            ),
          ),
          suffixIcon: Icon(Icons.clear_all),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: AppConstrant.secondaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: AppConstrant.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
