import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight weight) {
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: weight);
}

// class AppStyle extends TextStyle {
//   final double? size;
//   @override
//   // ignore: overridden_fields
//   final Color? color;
//   final FontWeight? fw;
//   AppStyle(
//       {this.size = 14,
//       this.color = AppConstrant.primaryColor,
//       this.fw = FontWeight.normal}) {
//     GoogleFonts.poppins(fontSize: size, color: color, fontWeight: fw);
//   }
// }
